.class public Lcom/google/android/gm/drive/FixPermissionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "FixPermissionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

.field private mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

.field private mFirstSpace:Landroid/view/View;

.field private mFirstSpinner:Landroid/widget/Spinner;

.field private mMoreOptions:Landroid/view/View;

.field private mNumFiles:I

.field private mPotentialFixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSecondButton:Landroid/widget/RadioButton;

.field private mSecondButtonDivider:Landroid/view/View;

.field private mSecondButtonExtras:Landroid/view/View;

.field private mSecondSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getRoleStringId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getRoleStringId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 301
    const-string v0, "READER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget v0, Lcom/android/calendar/R$string;->fix_permission_sharing_option_view:I

    .line 308
    :goto_0
    return v0

    .line 303
    :cond_0
    const-string v0, "COMMENTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    sget v0, Lcom/android/calendar/R$string;->fix_permission_sharing_option_comment:I

    goto :goto_0

    .line 305
    :cond_1
    const-string v0, "WRITER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    sget v0, Lcom/android/calendar/R$string;->fix_permission_sharing_option_edit:I

    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/google/android/gm/drive/FixPermissionsDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gm/drive/FixPermissionsDialogFragment;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;

    invoke-direct {v0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 75
    const-string v2, "dialogState"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    const-string v2, "potentialFixes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    const-string v2, "numFiles"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v0
.end method

.method private saveSharingPreference(I)V
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 371
    sget v0, Lcom/android/calendar/R$id;->last_button:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 373
    :goto_0
    const-string v2, "acl_fixer_dialog_option"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    return-void

    .line 372
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->first_button:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setSelectedOption()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v1}, Lcom/google/android/gm/drive/FixPermissionDialogState;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 196
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    move v0, v1

    .line 182
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 183
    const-string v4, "acl_fixer_dialog_option"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 185
    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_5

    if-eqz v3, :cond_5

    .line 189
    :goto_2
    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_1

    move v0, v2

    .line 192
    :cond_1
    if-nez v0, :cond_3

    sget v0, Lcom/android/calendar/R$id;->last_button:I

    .line 194
    :goto_3
    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 181
    goto :goto_1

    .line 193
    :cond_3
    if-ne v2, v0, :cond_4

    sget v0, Lcom/android/calendar/R$id;->first_button:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/calendar/R$id;->second_button:I

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private static setupRadioButton(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 212
    if-eqz p3, :cond_2

    .line 213
    sget v1, Lcom/android/calendar/R$id;->first_button:I

    .line 214
    sget v0, Lcom/android/calendar/R$id;->first_button_extras:I

    move v8, v0

    move v0, v1

    move v1, v8

    .line 221
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 222
    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->getOptionType()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 226
    const-string v4, "ADD_COLLABORATORS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    sget v2, Lcom/android/calendar/R$string;->fix_permissions_add_collaborators_button:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    sget v2, Lcom/android/calendar/R$string;->fix_permissions_google_account_required_warning:I

    .line 238
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 242
    sget v0, Lcom/android/calendar/R$id;->fix_permissions_spinner:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 243
    new-instance v1, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$1;

    sget v6, Lcom/android/calendar/R$layout;->acl_fixer_spinner_item:I

    .line 244
    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->getAllowedRoles()Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, p0, v6, v7}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 260
    const v6, 0x1090009

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 262
    invoke-virtual {v0, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 265
    if-eqz v2, :cond_0

    .line 266
    sget v1, Lcom/android/calendar/R$id;->fix_permissions_extra_text:I

    .line 267
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 269
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    new-instance v2, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;

    invoke-direct {v2, v0, v1, v4}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$2;-><init>(Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->fixesEverything()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    sget v1, Lcom/android/calendar/R$id;->fix_permissions_does_not_fix_everything_text:I

    .line 290
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    sget v2, Lcom/android/calendar/R$plurals;->fix_permissions_does_not_fix_everything_warning:I

    invoke-virtual {v5, v2, p5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_1
    return-object v0

    .line 216
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->second_button:I

    .line 217
    sget v0, Lcom/android/calendar/R$id;->second_button_extras:I

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    .line 229
    :cond_3
    const-string v4, "INCREASE_PUBLIC_VISIBILITY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    sget v2, Lcom/android/calendar/R$string;->fix_permissions_increase_public_visibility_button:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    sget v2, Lcom/android/calendar/R$string;->fix_permissions_google_account_not_required_warning:I

    goto :goto_1

    .line 233
    :cond_4
    sget v2, Lcom/android/calendar/R$string;->fix_permissions_increase_domain_visibility_button:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 235
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->getDomainDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 233
    invoke-virtual {v5, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object v4, v2

    move v2, v3

    .line 236
    goto/16 :goto_1
.end method

.method private showSecondOption()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mMoreOptions:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonExtras:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    sget v0, Lcom/android/calendar/R$id;->first_button:I

    if-ne p2, v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->second_button:I

    if-ne p2, v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 337
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    .line 339
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 340
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 343
    sget v0, Lcom/android/calendar/R$id;->first_button:I

    if-ne v5, v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/PotentialFix;

    .line 345
    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    move-object v2, v0

    .line 354
    :goto_0
    invoke-direct {p0, v5}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->saveSharingPreference(I)V

    .line 356
    new-instance v4, Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gm/drive/FixPermissionDialogState;-><init>(III)V

    .line 358
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mNumFiles:I

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mAccountName:Ljava/lang/String;

    .line 358
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->showOutsideDomainWarningDialog(Landroid/app/FragmentManager;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void

    .line 346
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->second_button:I

    if-ne v5, v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/PotentialFix;

    .line 348
    iget-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v2, v1

    .line 351
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 327
    sget v1, Lcom/android/calendar/R$id;->more_options:I

    if-ne v0, v1, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->showSecondOption()V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->fix_permissions_info_icon:I

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->acl_fixer_help_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "acl-fixer-dialog"

    invoke-static {v1, v0, v2}, Lcom/android/calendar/Utils;->startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 86
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 91
    const-string v1, "dialogState"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/drive/FixPermissionDialogState;

    iput-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    .line 92
    const-string v1, "potentialFixes"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    .line 93
    const-string v1, "numFiles"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mNumFiles:I

    .line 94
    const-string v1, "accountName"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mAccountName:Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object v9, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    .line 103
    :cond_0
    sget v1, Lcom/android/calendar/R$layout;->fix_permissions_dialog_title:I

    invoke-virtual {v2, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 104
    sget v1, Lcom/android/calendar/R$id;->fix_permissions_info_icon:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v1, Lcom/android/calendar/R$layout;->fix_permissions_dialog_body:I

    invoke-virtual {v2, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    sget v2, Lcom/android/calendar/R$id;->radio_group:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 111
    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/drive/PotentialFix;

    iget-object v4, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v4}, Lcom/google/android/gm/drive/FixPermissionDialogState;->getFirstSpinnerPosition()I

    move-result v4

    :goto_0
    iget v5, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mNumFiles:I

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setupRadioButton(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpinner:Landroid/widget/Spinner;

    .line 117
    sget v2, Lcom/android/calendar/R$id;->second_button_extras:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonExtras:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 119
    sget v2, Lcom/android/calendar/R$id;->more_options:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mMoreOptions:Landroid/view/View;

    .line 121
    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mPotentialFixes:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/drive/PotentialFix;

    iget-object v3, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v3}, Lcom/google/android/gm/drive/FixPermissionDialogState;->getSecondSpinnerPosition()I

    move-result v4

    :goto_1
    iget v5, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mNumFiles:I

    move v3, v6

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setupRadioButton(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    .line 125
    sget v0, Lcom/android/calendar/R$id;->second_button_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonDivider:Landroid/view/View;

    .line 126
    sget v0, Lcom/android/calendar/R$id;->second_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButton:Landroid/widget/RadioButton;

    .line 127
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonExtras:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 131
    sget v0, Lcom/android/calendar/R$id;->first_button_extras:I

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$id;->optional_space:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mFirstSpace:Landroid/view/View;

    .line 134
    invoke-direct {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->showSecondOption()V

    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setSelectedOption()V

    .line 148
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    sget v2, Lcom/android/calendar/R$id;->fix_permissions_spinner_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setId(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 158
    sget v0, Lcom/android/calendar/R$id;->last_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 159
    sget v2, Lcom/android/calendar/R$string;->fix_permissions_send_without_sharing:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 163
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->send:I

    .line 165
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->cancel:I

    .line 166
    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    return-object v0

    :cond_1
    move v4, v6

    .line 113
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 123
    goto :goto_1

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonExtras:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondButtonExtras:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$id;->fix_permissions_spinner:I

    .line 138
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    .line 139
    iget-object v0, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mSecondSpinner:Landroid/widget/Spinner;

    sget v2, Lcom/android/calendar/R$id;->fix_permissions_spinner_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setId(I)V

    goto :goto_2
.end method

.method public setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    .line 365
    return-void
.end method
