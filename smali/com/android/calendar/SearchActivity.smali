.class public Lcom/android/calendar/SearchActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;
.implements Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mClearSearchButton:Landroid/widget/ImageView;

.field private mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mQuery:Lcom/android/calendar/search/Query;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchFragment:Lcom/android/calendar/search/SearchFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/calendar/SearchActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ChipRecycler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 80
    new-instance v0, Lcom/android/calendar/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchActivity$1;-><init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SearchActivity;)Lcom/android/calendar/search/SearchFragment;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/SearchActivity;)Lcom/android/calendar/search/Query;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    return-object v0
.end method

.method private static getQueryFromIntent(Landroid/content/Intent;)Lcom/android/calendar/search/Query;
    .locals 3

    .prologue
    .line 176
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v1, Lcom/android/calendar/search/Query;

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/calendar/search/Query;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 181
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/search/Query;

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 289
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p1}, Lcom/android/calendar/SearchActivity;->getQueryFromIntent(Landroid/content/Intent;)Lcom/android/calendar/search/Query;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    .line 292
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    invoke-direct {p0, v0}, Lcom/android/calendar/SearchActivity;->updateSearchViewText(Lcom/android/calendar/search/Query;)V

    .line 294
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;

    invoke-virtual {v0}, Lcom/android/calendar/search/SearchFragment;->doSearch()V

    .line 297
    :cond_0
    return-void
.end method

.method private initFragments(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 206
    if-nez p1, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/android/calendar/search/SearchFragment;

    invoke-direct {v1}, Lcom/android/calendar/search/SearchFragment;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;

    .line 209
    sget v1, Lcom/android/calendar/R$id;->search_results:I

    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;

    const-string v3, "SearchFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 211
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v1, "SearchFragment"

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/search/SearchFragment;

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;

    goto :goto_0
.end method

.method private updateClearSearchVisibility()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mClearSearchButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mClearSearchButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSearchViewText(Lcom/android/calendar/search/Query;)V
    .locals 2

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/android/calendar/search/Query;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/android/calendar/search/Query;->getWhat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/calendar/SearchActivity;->updateClearSearchVisibility()V

    .line 358
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-object v0
.end method

.method public getQuery()Lcom/android/calendar/search/Query;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->clear_search:I

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {v0}, Lcom/android/calendar/KeyboardManipulator;->requestShow()V

    .line 341
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectIfMandatoryPermissionsNotGranted(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 108
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->search:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/SearchActivity;->setContentView(I)V

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/calendar/SearchActivity;->setDefaultKeyMode(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 113
    const/16 v0, 0x14

    .line 114
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const/16 v0, 0x16

    .line 117
    :cond_1
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 118
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget v0, Lcom/android/calendar/R$drawable;->ic_arrow_thinleft_selectable:I

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 121
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->search_custom_view:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    sget v1, Lcom/android/calendar/R$id;->search_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 130
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 133
    sget v1, Lcom/android/calendar/R$id;->clear_search:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/calendar/SearchActivity;->mClearSearchButton:Landroid/widget/ImageView;

    .line 134
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mClearSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 137
    new-instance v0, Lcom/android/calendar/KeyboardManipulator;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/KeyboardManipulator;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    if-eqz p1, :cond_6

    const-string v1, "key_restore_search_query"

    .line 143
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    const-string v0, "key_restore_search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/search/Query;

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    .line 152
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const-string v0, "key_rotation"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    move v0, v3

    .line 155
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->initFragments(Landroid/os/Bundle;)V

    .line 156
    invoke-direct {p0}, Lcom/android/calendar/SearchActivity;->updateClearSearchVisibility()V

    .line 159
    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {v0}, Lcom/android/calendar/KeyboardManipulator;->requestShow()V

    .line 162
    :cond_5
    invoke-static {p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 163
    if-eqz p1, :cond_8

    .line 164
    const-string v0, "SearchActivity.Recreated"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_6
    invoke-static {v0}, Lcom/android/calendar/SearchActivity;->getQueryFromIntent(Landroid/content/Intent;)Lcom/android/calendar/search/Query;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    goto :goto_1

    :cond_7
    move v0, v2

    .line 153
    goto :goto_2

    .line 166
    :cond_8
    const-string v0, "SearchActivity.Created"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 233
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/calendar/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->home_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 237
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/SearchActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/SearchActivity$2;-><init>(Lcom/android/calendar/SearchActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    invoke-direct {p0, v0}, Lcom/android/calendar/SearchActivity;->updateSearchViewText(Lcom/android/calendar/search/Query;)V

    .line 255
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    const-string v0, "SearchActivity.Destroyed"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 316
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 317
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 323
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 324
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    .line 326
    new-instance v1, Lcom/android/calendar/search/Query;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/search/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/CalendarApplication;->startSearch(Lcom/android/calendar/search/Query;Landroid/content/Context;)V

    .line 327
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {v0}, Lcom/android/calendar/KeyboardManipulator;->requestHide()V

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to launch bundle"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    sget v0, Lcom/android/calendar/R$string;->task_not_found:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/CalendarController;->launchViewDetails(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/android/calendar/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 262
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 268
    const-string v2, "KEY_HOME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 309
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {v0}, Lcom/android/calendar/KeyboardManipulator;->requestHide()V

    .line 311
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    const-string v0, "key_restore_search_query"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    const-string v0, "key_rotation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method
