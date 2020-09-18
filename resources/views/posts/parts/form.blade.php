<div class="form-group">
    <input type="text" class="form-control" name="title" required value="{{old('title') ?? $post->title ?? ''}}"></div>
<div class="form-group">
    <textarea id="descr" name="descr" rows="10" class="form-control"
              required>{{old('descr') ?? $post->descr ?? ''}}</textarea></div>
<div class="form-group">
    <div class="fl_upld">
        <label><input id="fl_inp" type="file" name="file">Select file</label>
        <div id="fl_nm">File is not selected</div>
    </div>
</div>

<script>document.addEventListener("DOMContentLoaded", function (event) {var editor = CKEDITOR.replace('descr');});</script>
<script> $(document).ready( function() {$("#fl_inp").change(function(){var filename = $(this).val().replace(/.*\\/, ""); $("#fl_nm").html(filename);});});</script>
