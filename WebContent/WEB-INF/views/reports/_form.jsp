<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${errors != null}">
  <div id="flush_error">
    入力内容にエラーがあります。<br />
    <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" />
      <br />
    </c:forEach>

  </div>
</c:if>
<label for="report_date">日付</label>
<br />
<input type="date" name="report_date"
  value="<fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label>
<br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<label for="title">業務内容</label>
<br />
<select name="title">
  <option value="選択">選択</option>

  <option value="【CS業務】返品保証対応"
    <c:if test="${report.title=='【CS業務】返品保証対応'}"><c:out value="selected" />
    </c:if>>【CS業務】返品保証対応
    </option>

  <option value="【CS業務】お問い合わせ対応"
    <c:if test="${report.title=='【CS業務】お問い合わせ対応'}"><c:out value="selected" />
    </c:if>>【CS業務】お問い合わせ対応
  </option>

  <option value="【CS業務】再発送対応"
    <c:if test="${report.title=='【CS業務】再発送対応'}"><c:out value="selected" />
    </c:if>>【CS業務】再発送対応
  </option>

  <option value="【CS業務】会員登録"
    <c:if test="${report.title=='【CS業務】会員登録'}"><c:out value="selected" />
    </c:if>>【CS業務】会員登録
  </option>

  <option value="【CS業務】解約案内"
    <c:if test="${report.title=='【CS業務】解約案内'}"><c:out value="selected" />
    </c:if>>【CS業務】解約案内
  </option>

  <option value="【自社業務】HP作成"
    <c:if test="${report.title=='【自社業務】HP作成'}"><c:out value="selected" />
    </c:if>>【自社業務】HP作成
  </option>

  <option value="【自社業務】A社打ち合わせ"
    <c:if test="${report.title=='【自社業務】A社打ち合わせ'}"><c:out value="selected" />
    </c:if>>【自社業務】A社打ち合わせ
  </option>

  <option value="【自社業務】見積提出"
    <c:if test="${report.title=='【自社業務】見積提出'}"><c:out value="selected" />
    </c:if>>【自社業務】見積提出
  </option>

  <option value="【自社業務】経費精算"
    <c:if test="${report.title== '【自社業務】経費精算'}"><c:out value="selected" />
    </c:if>>【自社業務】経費精算
  </option>
</select>
<br /><br />

<label for="content">具体的な内容</label>
<br />
<textarea name="content" rows="10" cols="50">${report.content}</textarea>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>