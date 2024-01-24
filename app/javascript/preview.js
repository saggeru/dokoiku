document.addEventListener('turbo:load', function(){
  // 新規投稿・編集ページのフォームを取得
  const postForm = document.getElementById('new-post-img');

  // プレビューを表示するためのスペースを取得
  const previewList = document.getElementById('previews');

  // 新規投稿・編集ページのフォームがないならここで終了。「!」は論理否定演算子。
  if (!postForm) return null;

  // input要素を取得
  const fileField = document.querySelector('input[type="file"][name="post[images][]"]');
  // input要素で値の変化が起きた際に呼び出される関数
  fileField.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const alreadyPreview = document.querySelector('.preview');
    if (alreadyPreview) {
      alreadyPreview.remove();
    };

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    // 画像を表示するためのdiv要素を生成
    const previewWrapper = document.createElement('div');
    previewWrapper.setAttribute('class', 'preview');

    // 表示する画像を生成
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);

    // 生成したHTMLの要素をブラウザに表示させる
    previewWrapper.appendChild(previewImage);
    previewList.appendChild(previewWrapper);
  });

  const previewList2 = document.getElementById('previews2');

  // input要素（new-post-img2用）を取得
  const fileField2 = document.querySelector('input[type="file"][name="post[images][]"][id="new-post-img2"]');
  // input要素（new-post-img2用）で値の変化が起きた際に呼び出される関数
  fileField2.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const alreadyPreview2 = document.querySelector('.preview2');
    if (alreadyPreview2) {
      alreadyPreview2.remove();
    }

    const file2 = e.target.files[0];
    const blob2 = window.URL.createObjectURL(file2);

    // 画像を表示するためのdiv要素を生成
    const previewWrapper2 = document.createElement('div');
    previewWrapper2.setAttribute('class', 'preview2');

    // 表示する画像を生成
    const previewImage2 = document.createElement('img');
    previewImage2.setAttribute('class', 'preview-image');
    previewImage2.setAttribute('src', blob2);

    // 生成したHTMLの要素をブラウザに表示させる
    previewWrapper2.appendChild(previewImage2);
    previewList2.appendChild(previewWrapper2);
  });

  const previewList3 = document.getElementById('previews3');

  // input要素（new-post-img3用）を取得
  const fileField3 = document.querySelector('input[type="file"][name="post[images][]"][id="new-post-img3"]');
  // input要素（new-post-img3用）で値の変化が起きた際に呼び出される関数
  fileField3.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const alreadyPreview3 = document.querySelector('.preview3');
    if (alreadyPreview3) {
      alreadyPreview3.remove();
    }

    const file3 = e.target.files[0];
    const blob3 = window.URL.createObjectURL(file3);

    // 画像を表示するためのdiv要素を生成
    const previewWrapper3 = document.createElement('div');
    previewWrapper3.setAttribute('class', 'preview3');

    // 表示する画像を生成
    const previewImage3 = document.createElement('img');
    previewImage3.setAttribute('class', 'preview-image');
    previewImage3.setAttribute('src', blob3);

    // 生成したHTMLの要素をブラウザに表示させる
    previewWrapper3.appendChild(previewImage3);
    previewList3.appendChild(previewWrapper3);
  });
});

