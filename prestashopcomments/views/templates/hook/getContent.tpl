<h2>Prestashop Comments Configuration</h2>

{if isset($confirmation)}
    <div class="conf confirm">Settings updated!</div>
{/if}

<fieldset class="width6">
    <legend>
        <img src="../img/admin/cog.gif" /> Configuration
    </legend>
    <form method="POST" action="">
        <label>Enable grades:</label>
        <div>
            Yes <input type="radio" name="enable_grades" value="yes" {if $enable_grades eq "yes"} checked="checked" {/if} />
            No <input type="radio" name="enable_grades" value="no" {if empty($enable_grades) || $enable_grades eq "no"} checked="checked" {/if} />
        </div>
        <br clear="left" />

        <label>Enable comments:</label>
        <div>
            Yes <input type="radio" name="enable_comments" value="yes" {if $enable_comments eq "yes"} checked="checked" {/if} />
            No <input type="radio" name="enable_comments" value="no" {if empty($enable_comments) || $enable_comments eq "no"} checked="checked" {/if} />
        </div>

        <p align="center"><input type="submit" value="Save" name="pc_config_form" class="button" /></p>
    </form>
</fieldset>