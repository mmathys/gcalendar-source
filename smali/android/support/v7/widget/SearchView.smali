.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;,
        Landroid/support/v7/widget/SearchView$SavedState;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mExpandedInActionView:Z

.field private final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mTemp:[I

.field private mTemp2:[I

.field private mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SearchView;Z)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1580
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1584
    if-eqz p2, :cond_0

    .line 1585
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1587
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1588
    if-eqz p4, :cond_1

    .line 1589
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    :cond_1
    if-eqz p3, :cond_2

    .line 1592
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1595
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1597
    :cond_3
    if-eqz p5, :cond_4

    .line 1598
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1599
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1601
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1602
    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1249
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 2

    .prologue
    .line 1739
    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1740
    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1741
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 882
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 885
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 887
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 896
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 890
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 891
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1558
    const-string v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1559
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1560
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1561
    return-void
.end method

.method private onCloseClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1252
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1260
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1269
    :cond_1
    :goto_0
    return-void

    .line 1264
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1266
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1273
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1278
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1234
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1236
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 1237
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1238
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1239
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_1
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1242
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1245
    :cond_2
    return-void
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 977
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 3

    .prologue
    .line 1001
    if-eqz p1, :cond_1

    .line 1002
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1006
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1008
    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 964
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 967
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_3

    .line 968
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 970
    if-eqz v1, :cond_1

    .line 971
    if-eqz v2, :cond_5

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 973
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 964
    goto :goto_0

    :cond_3
    move v0, v1

    .line 967
    goto :goto_1

    .line 968
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 971
    :cond_5
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 954
    const/16 v0, 0x8

    .line 955
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 956
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 957
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 958
    :cond_0
    const/4 v0, 0x0

    .line 960
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 961
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2

    .prologue
    .line 945
    const/16 v0, 0x8

    .line 946
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 948
    :cond_0
    const/4 v0, 0x0

    .line 950
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 900
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    .line 902
    if-eqz p1, :cond_1

    move v0, v1

    .line 904
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 906
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 908
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_4

    .line 916
    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 918
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 919
    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 920
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 921
    return-void

    :cond_1
    move v0, v2

    .line 902
    goto :goto_0

    :cond_2
    move v3, v1

    .line 904
    goto :goto_1

    :cond_3
    move v0, v1

    .line 908
    goto :goto_2

    :cond_4
    move v2, v1

    .line 914
    goto :goto_3

    :cond_5
    move v4, v1

    .line 919
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1199
    .line 1200
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1201
    const/4 v0, 0x0

    .line 1202
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1204
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1205
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 531
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 532
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 533
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 534
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 535
    return-void
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1325
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1329
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1330
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1337
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1340
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1341
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1342
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 996
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 997
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 998
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 863
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 865
    if-eqz p1, :cond_0

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 871
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_1

    .line 872
    new-instance v0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 816
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 859
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 822
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 824
    sparse-switch v1, :sswitch_data_0

    .line 846
    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 847
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 849
    sparse-switch v2, :sswitch_data_1

    .line 857
    :goto_2
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 858
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 857
    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 827
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v1, :cond_2

    .line 828
    iget v1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 830
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 835
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v1, :cond_1

    .line 836
    iget v1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 841
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 852
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 824
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 849
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1395
    instance-of v0, p1, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1396
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1403
    :goto_0
    return-void

    .line 1399
    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$SavedState;

    .line 1400
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1401
    iget-boolean v0, p1, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1402
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1387
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1388
    new-instance v1, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1389
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    .line 1390
    return-object v1
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1307
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1308
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    .line 1311
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1315
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1317
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1318
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    if-eqz v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_3

    .line 517
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 518
    if-eqz v1, :cond_2

    .line 519
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_2
    move v0, v1

    .line 521
    goto :goto_0

    .line 523
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIconified(Z)V
    .locals 0

    .prologue
    .line 702
    if-eqz p1, :cond_0

    .line 703
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 605
    if-eqz p1, :cond_0

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 607
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 611
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    .line 614
    :cond_1
    return-void
.end method
