<div id="idTabPrestashopComments">
    {if $comments}
        {foreach from=$comments item=comment}
            <u>Comment #{$comment.id_prestashop_comment}:</u><br />
            {$comment.comment}<br />
            Grade:{$comment.grade}/5<br />
            <hr />
        {/foreach}
    {/if}

    {if $enable_grades eq "yes" OR $enable_comments eq "yes"}
    <form action="" method="POST" id="comment-form">
        {if $enable_grades eq "yes"}
        <label><strong>Grade:</strong></label>
        <div>
            <select name="grade" id="grade">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        {/if}

        {if $enable_comments eq "yes"}
        <label><strong>Comment:</strong></label>
        <div>
            <textarea name="comment" id="comment" rows="5" cols="400"></textarea>
        </div>
        {/if}

        <p align="left"><input type="submit" value="Send" name="pc_rating_form" /></p>
    </form>
    {/if}
</div>