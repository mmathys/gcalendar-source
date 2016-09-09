.class public Lcom/android/calendar/calendarlist/DrawerListAdapter;
.super Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;
.source "DrawerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/calendarlist/DrawerListAdapter$StatusbarSpacingItem;,
        Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;
    }
.end annotation


# instance fields
.field private final NUM_TOP_ITEMS:I

.field private final mDrawerButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mDrawerSyncUIManager:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

.field private final mDrawerVerticalPadding:I

.field private final mIsTabletConfig:Z

.field private final mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

.field private final mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

.field private mSelectedViewId:I

.field private mTopWindowInset:I

.field private final mViewSwitcherIds:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLjava/util/Set;Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;-><init>(Landroid/content/Context;ZILjava/util/Set;)V

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->NUM_TOP_ITEMS:I

    .line 130
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mViewSwitcherIds:Landroid/util/SparseBooleanArray;

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    invoke-direct {v1, p1, p0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;-><init>(Landroid/content/Context;Lcom/android/calendar/calendarlist/DrawerListAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerSyncUIManager:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    .line 143
    sget v1, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mIsTabletConfig:Z

    .line 144
    sget v1, Lcom/android/calendar/R$dimen;->drawer_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerVerticalPadding:I

    .line 145
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mIsTabletConfig:Z

    invoke-static {v1, v2}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getLastUsedView(Landroid/content/Context;Z)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mSelectedViewId:I

    .line 147
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 148
    sget v1, Lcom/android/calendar/R$id;->agenda_view:I

    sget v3, Lcom/android/calendar/R$string;->agenda_view_label:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget v1, Lcom/android/calendar/R$id;->hourly_view:I

    sget v3, Lcom/android/calendar/R$string;->hourly_view_label:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget v1, Lcom/android/calendar/R$id;->list_week_view_3days:I

    sget v3, Lcom/android/calendar/R$string;->list_week_view_3days_label:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget v1, Lcom/android/calendar/R$id;->week_view:I

    sget v3, Lcom/android/calendar/R$string;->week_view_label:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget v1, Lcom/android/calendar/R$id;->month_view:I

    sget v3, Lcom/android/calendar/R$string;->month_view_label:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 155
    sget v1, Lcom/android/calendar/R$id;->agenda_view:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_agenda_selectable:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget v1, Lcom/android/calendar/R$id;->hourly_view:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_hourview_selectable:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget v1, Lcom/android/calendar/R$id;->list_week_view_3days:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_week_selectable:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget v1, Lcom/android/calendar/R$id;->week_view:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_week_selectable:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget v1, Lcom/android/calendar/R$id;->month_view:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_monthview_selectable:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    new-instance v1, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;

    invoke-direct {v1, p0, p4}, Lcom/android/calendar/calendarlist/DrawerListAdapter$1;-><init>(Lcom/android/calendar/calendarlist/DrawerListAdapter;Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V

    iput-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerButtonClickListener:Landroid/view/View$OnClickListener;

    .line 178
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mIsTabletConfig:Z

    if-nez v1, :cond_0

    .line 179
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 190
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    iput-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    .line 191
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/calendar/calendarlist/DrawerListAdapter$StatusbarSpacingItem;

    invoke-direct {v5}, Lcom/android/calendar/calendarlist/DrawerListAdapter$StatusbarSpacingItem;-><init>()V

    aput-object v5, v1, v4

    .line 196
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 197
    aget v4, v0, v1

    .line 198
    iget-object v5, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mViewSwitcherIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 199
    iget-object v5, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    .line 200
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-direct {v7, v4, v8, v9}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    aput-object v7, v5, v6

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_0
    sget v1, Lcom/android/calendar/R$array;->view_switcher_ids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    .line 183
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 184
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 186
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v1

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    sget v3, Lcom/android/calendar/R$id;->search:I

    sget v4, Lcom/android/calendar/R$string;->search:I

    sget v5, Lcom/android/calendar/R$drawable;->ic_search:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    aput-object v2, v1, v0

    .line 207
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getDrawerExtensions()Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;->getExtraButtons(Landroid/content/Context;)[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    move-result-object v0

    .line 216
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    iput-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    .line 217
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    sget v4, Lcom/android/calendar/R$id;->settings:I

    sget v5, Lcom/android/calendar/R$string;->drawer_settings:I

    sget v6, Lcom/android/calendar/R$drawable;->ic_settings:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    aput-object v3, v1, v2

    .line 219
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    sget v4, Lcom/android/calendar/R$id;->help:I

    sget v5, Lcom/android/calendar/R$string;->drawer_help_feedback:I

    sget v6, Lcom/android/calendar/R$drawable;->ic_help:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    aput-object v3, v1, v2

    .line 221
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/calendarlist/DrawerListAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mViewSwitcherIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getCalendarListEndIndex()I
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    array-length v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getCalendarListStartIndex()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    array-length v0, v0

    return v0
.end method

.method private inflateNewDrawerButton(Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->getLockupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 235
    :goto_0
    sget v1, Lcom/android/calendar/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_0
    return-object v0

    .line 229
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->drawer_list_top_spacing:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->drawer_list_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private isInCalendarListRange(I)Z
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListStartIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListEndIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupDividersBasedOnPosition(Landroid/view/View;Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;I)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 326
    invoke-virtual {p2}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 327
    invoke-virtual {p2}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->divider_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 333
    sget v1, Lcom/android/calendar/R$id;->divider_bottom:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 341
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListStartIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_3

    .line 345
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListEndIndex()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 349
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupDrawerButton(Landroid/view/View;Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p2}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->getType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 245
    iget v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mTopWindowInset:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_4

    move v3, v1

    .line 251
    :goto_1
    if-nez v3, :cond_2

    .line 252
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    :cond_2
    invoke-virtual {p2}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->getType()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    .line 261
    sget v0, Lcom/android/calendar/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    if-nez v3, :cond_3

    .line 263
    iget v3, p2, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mIconId:I

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 264
    iget v3, p2, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mLabelId:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 266
    :cond_3
    iget v3, p2, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mId:I

    iget v4, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mSelectedViewId:I

    if-ne v3, v4, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 250
    goto :goto_1

    :cond_5
    move v1, v2

    .line 266
    goto :goto_2
.end method

.method private setupPaddingBasedOnPosition(Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    .line 358
    if-nez p2, :cond_4

    move v0, v1

    .line 362
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListEndIndex()I

    move-result v3

    if-ne p2, v3, :cond_0

    move v0, v1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_3

    move v3, v1

    .line 371
    :goto_1
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerVerticalPadding:I

    move v1, v0

    :goto_2
    if-eqz v3, :cond_2

    .line 372
    iget v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerVerticalPadding:I

    .line 371
    :goto_3
    invoke-virtual {p1, v2, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 373
    return-void

    :cond_1
    move v1, v2

    .line 371
    goto :goto_2

    :cond_2
    move v0, v2

    .line 372
    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public areAllCalendarsHidden()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 424
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 406
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 408
    :pswitch_1
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-boolean v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 409
    goto :goto_0

    .line 414
    :pswitch_2
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    iget-boolean v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 415
    goto :goto_0

    .line 424
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    array-length v0, v0

    invoke-super {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawerSyncUIManager()Lcom/android/calendar/calendarlist/DrawerSyncUIManager;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mDrawerSyncUIManager:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    return-object v0
.end method

.method public getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;
    .locals 2

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->isInCalendarListRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListStartIndex()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPreCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    aget-object v0, v0, p1

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mPostCalendarButtons:[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListEndIndex()I

    move-result v1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->isInCalendarListRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getCalendarListStartIndex()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getItemId(I)J

    move-result-wide v0

    .line 296
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    iget v0, v0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;->mId:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->isInCalendarListRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 322
    :goto_0
    return-object p2

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    .line 314
    if-nez p2, :cond_1

    .line 315
    invoke-direct {p0, v0, p3}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->inflateNewDrawerButton(Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 318
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->setupDrawerButton(Landroid/view/View;Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;)V

    .line 319
    invoke-direct {p0, p2, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->setupPaddingBasedOnPosition(Landroid/view/View;I)V

    .line 320
    invoke-direct {p0, p2, v0, p1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->setupDividersBasedOnPosition(Landroid/view/View;Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public refreshViewSwitcherIcons()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mViewSwitcherIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mIsTabletConfig:Z

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getLastUsedView(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mSelectedViewId:I

    .line 380
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method setStatusbarSpacingItemHeight(I)V
    .locals 0

    .prologue
    .line 435
    iput p1, p0, Lcom/android/calendar/calendarlist/DrawerListAdapter;->mTopWindowInset:I

    .line 436
    return-void
.end method
