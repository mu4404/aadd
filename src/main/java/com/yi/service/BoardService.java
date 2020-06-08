package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.BoardVO;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;
import com.yi.domain.ZoneVO;
import com.yi.persistence.BoardDAO;
import com.yi.persistence.ImageDAO;
import com.yi.persistence.ThemeDAO;
import com.yi.persistence.UsersDAO;
import com.yi.persistence.ZoneDAO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;

	@Autowired
	ImageDAO imgDao;

	@Autowired
	UsersDAO userDao;

	@Autowired
	ThemeDAO themeDao;

	@Autowired
	ZoneDAO zoneDao;

	/*** 카페추천 ***/
	// 추천카페 -- 리스트 (테스트용)
	public List<BoardVO> recommendboardList() throws Exception {
		return dao.recommendboardList();
	}

	// 추천카페 -- 페이징된 리스트
	public List<BoardVO> recommendboardListSearchCriteria(int cBoardNo, SearchCriteria cri) throws Exception {
		return dao.recommendboardListSearchCriteria(cBoardNo, cri);
	}

	public List<ImageVO> recommendboardImgList(int sboardNo) throws Exception {
		return dao.recommendboardImgList(sboardNo);
	}

	// 추천카페 -- 등록
	@Transactional
	public void recommendInsert(BoardVO vo) throws Exception {
		dao.recommendInsert(vo);
		int boardNo = vo.getBoardNo();
		// System.out.println("service=============================="+ vo.getFiles());
		for (String file : vo.getStringFiles()) {
			dao.recommendInsertImages(file, boardNo);
		}
	}

	// 추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo) throws Exception {
		// 조회수
		dao.updateViewCnt(boardNo);
		return dao.recommendReadByNo(boardNo);
	}
	
	//같은 카페 리스트
	public List<BoardVO> recommendSameCafeList(BoardVO vo) throws Exception {
		return dao.recommendSameCafeList(vo);
	}
	//같은 카페 글 등록수
	public int recommendSameCafeCnt(BoardVO vo) throws Exception {
		return dao.recommendSameCafeCnt(vo);
	}
	
	//같은 키워드 리스트
	public List<BoardVO> recommendSameKeywordList(BoardVO vo) throws Exception {
		return dao.recommendSameKeywordList(vo);
	}
	//같은 키워드 글 등록수
	public int recommendSameKeywordCnt(BoardVO vo) throws Exception {
		return dao.recommendSameKeywordCnt(vo);
	}
	

	// 추천카페 사진삭제
	public void removeRecommendImg(String delfiles) throws Exception {
		dao.removeRecommendImg(delfiles);
	}

	// 추천카페 수정
	@Transactional
	public void recommendUpdate(BoardVO vo) throws Exception {
		dao.recommendUpdate(vo);
		int boardNo = vo.getBoardNo();
		/* int boardNo = 636; */
		System.out.println("service+++++++++++++++++"+vo.toString());
		System.out.println("service=============================="+ boardNo);
		 for(String file : vo.getStringFiles()) {
			 dao.recommendInsertImages(file,boardNo);
		 }		 
	}
	
	// 추천카페 -- 전체 조회순 랭킹
	public List<BoardVO> rcRankVoteAll() throws Exception{
		return dao.rcRankVoteAll();
	}
	//추천카페-- '당월' 추천순 랭킹
	public List<BoardVO> rcRankVoteMonth() throws Exception {
		return dao.rcRankVoteMonth();
	}
	//추천카페-- '당월' 조회순 랭킹
	public List<BoardVO> rcRankViewMonth() throws Exception {
		return dao.rcRankViewMonth();
	}
	//추천카페-- '당월' 댓글순 랭킹
	public List<BoardVO> rcRankReplyMonth() throws Exception {
		return dao.rcRankReplyMonth();
	}
	//추천카페-- '전월' 추천순 랭킹
	public List<BoardVO> rcRankVoteLastMonth() throws Exception {
		return dao.rcRankVoteLastMonth();
	}	
		

	/*** 공통 ***/
	// 오늘 등록된 글 갯수(**커뮤니티 공통**)
	public int todayBoardCount(int cBoardNo) throws Exception {
		return dao.todayBoardCount(cBoardNo);
	}

	// 각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용)
	public int totalSearchCount(int cBoardNo) throws Exception {
		return dao.totalSearchCount(cBoardNo);
	}

	// 각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용 - join)
	public int totalSearchCountJoin(int cBoardNo, SearchCriteria cri) throws Exception {
		return dao.totalSearchCountJoin(cBoardNo, cri);
	}

	// 테마 리스트
	public List<ThemeVO> themeList() throws Exception {
		return themeDao.themeList();
	}

	// 지역 리스트
	public List<ZoneVO> zoneList() throws Exception {
		return zoneDao.zoneList();
	}

	// 게시글 추천(좋아요) 더하기
	public void insertVotePlusCnt(int boardNo, int userNo) throws Exception {
		dao.insertVotePlusCnt(boardNo, userNo);
		dao.updateBoardVoteCnt(boardNo);
	}

	// 게시글 추천(좋아요) 빼기
	public void deleteVoteMinusCnt(int boardNo, int userNo) throws Exception {
		dao.deleteVoteMinusCnt(boardNo, userNo);
		dao.updateBoardVoteCnt(boardNo);
	}

	// 게시글 추천(좋아요) 갯수
	public int boardVoteCnt(int boardNo) throws Exception {
		return dao.boardVoteCnt(boardNo);
	}
	
	// 유저가 올린 게시글 갯수 판단 후 등급 업데이트 메소드
	private void userGradeUpdate(BoardVO vo) throws Exception {
		int userNo = vo.getUserNo().getUserNo();
		int boardTotalCnt = dao.totalUserBoardCount(userNo);
		if (boardTotalCnt >= 20) {
			userDao.updateUsersGrade(2, userNo);
		} else if (boardTotalCnt >= 100) {
			userDao.updateUsersGrade(3, userNo);
		}
	}

	public int userVoteCdt(int userNo, int boardNo) throws Exception {
		return dao.userVoteCdt(userNo, boardNo);
	}
	
	/*** 탐방기 ***/
	// 경진 추가 (user) start ------------------------------------------------------------------------------------	
	// 등록
	@Transactional
	public void cafeReviewInsert(BoardVO vo, ImageVO imgVO) throws Exception {
		dao.cafeReviewInsert(vo);
		imgDao.insertImageByBoardNo(imgVO);

		userGradeUpdate(vo);
	}

	// 탐방기 list
	public List<BoardVO> cafeReviesList(int cBoardNo, SearchCriteria cri) throws Exception {
		return dao.cafeReviesList(cBoardNo, cri);
	}
	// 탐방기 베스트 리스트
	public List<BoardVO> cafeReviewBestList(int cBoardNo, SearchCriteria cri) throws Exception {
		return dao.cafeReviewBestList(cBoardNo, cri);
	}
	// 탐방기 월간 베스트 리스트
	public List<BoardVO> cafeReviewMonthBestList() throws Exception {
		return dao.cafeReviewMonthBestList();
	}

	// 탐방기 상세보기
	public BoardVO cafeReviewRead(int boardNo) throws Exception {
		return dao.cafeReviewRead(boardNo);
	}
	
	// 탐방기 상세보기 같은 카페 탐방기 리스트
	public List<BoardVO> cafeReviewSameList(BoardVO vo) throws Exception {
		return dao.cafeReviewSameList(vo);
	}
	// 탐방기 상세보기 같은 카페 탐방기 카운트
	public int cafeReivewSameCnt(BoardVO vo) throws Exception {
		return dao.cafeReivewSameCnt(vo);
	}

	/* 탐방기 수정 */
	@Transactional // 대표 이미지와 같이 수정
	public void cafeReviewAndImgModify(BoardVO vo, ImageVO imgVO) throws Exception {
		dao.cafeReviewModify(vo);
		imgDao.updateImageByBoardNo(imgVO);
	}

	// 게시글 내용만 수정
	public void cafeReviewModify(BoardVO vo) throws Exception {
		dao.cafeReviewModify(vo);
	}

	// 탐방기 조회수
	public void cafeReviewViewUpdate(int boardNo) throws Exception {
		dao.updateViewCnt(boardNo);
	}

	// 탐방기 삭제 (삭제 여부 수정)
	public void cafeReviewRemove(BoardVO vo) throws Exception {
		dao.cafeReviewRemove(vo);
	}

	// 경진 추가 (user) end ------------------------------------------------------------------------------------
	// 경진 추가 (admin) start ------------------------------------------------------------------------------------
	public int todayCafeReviewCnt(int boardType) throws Exception {
		return dao.todayBoardCnt(boardType);
	}
	
	public int yesterDayCafeReviewCnt(int boardType) throws Exception {
		return dao.yesterBoardCnt(boardType);
	}
	
	// 경진 추가 (admin) end ------------------------------------------------------------------------------------

//	재승 추가
	// 카페 상세보기의 해당 카페 탐방기 리스트
	public List<BoardVO> cafeReviewSameListByCafeNo(BoardVO boardVO) throws Exception {
		return dao.cafeReviewSameListByCafeNo(boardVO);
	}

	public int cafeReivewSameCntByCafeNo(BoardVO boardVO) throws Exception {
		return dao.cafeReivewSameCntByCafeNo(boardVO);
	}
	// 카페와 같은 키워드, 지역의 추천 카페 리스트
	public List<BoardVO> recommendSameKeywordListByZoneAndTheme(BoardVO boardVO) throws Exception {
		return dao.recommendSameKeywordListByZoneAndTheme(boardVO);
	}

	public int recommendSameKeywordCntByZoneAndTheme(BoardVO boardVO) throws Exception {
		return dao.recommendSameKeywordCntByZoneAndTheme(boardVO);
	}

	// 아름추가 : 탐방기 월간 베스트15 Main에 쓸 리스트
	public List<BoardVO> cafeReviewMonthBestListHome() throws Exception {
		return dao.cafeReviewMonthBestListHome();
	}




}
