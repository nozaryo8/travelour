//= require active_admin/base
'use strict';

$(function () {
  const $title = $('#titel');
  const $body = $('#body');
  const $checkbox = $('#checkbox');
  const $submit = $('#submit');

  // フォームチェック関数
  function isFormValid() {
    const isValid = $title.val().trim()
      && $body.val().trim()
      && $checkbox.prop('checked');

    $submit.attr("disabled", !isValid);
  }

  // ページロード時にチェックを行う
  isFormValid();

  // フォームコントロールのイベントハンドラ
  $('input').on('keyup change', function () {
    isFormValid();
  });

  // フォームが送信された時にアラートを表示する
  $('form').on('submit', (e) => {
    e.preventDefault();
    // 本当はこの部分に実際の登録処理を書く
    alert('登録しました。');
  });
});