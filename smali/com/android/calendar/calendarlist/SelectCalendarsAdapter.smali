.class public Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;
    }
.end annotation


# instance fields
.field private final mBirthdayColor:I

.field private final mBirthdayText:Ljava/lang/String;

.field private mBirthdaysSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mClickableViewTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorViewTouchAreaIncrease:I

.field protected final mContext:Landroid/content/Context;

.field private mEnablePostProcess:Z

.field private final mGroupTopMarginIncrease:I

.field private final mHolidayText:Ljava/lang/String;

.field protected final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLastItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMoreLabelText:Ljava/lang/String;

.field private final mOperationMode:I

.field private final mOriginalVisibilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryCalendarText:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;

.field private final mService:Lcom/android/calendar/AsyncQueryService;

.field private final mShowCalendarsText:Ljava/lang/String;

.field private final mShowHiddenCalendars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowMoreText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 117
    iput-boolean p2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mEnablePostProcess:Z

    .line 118
    iput p3, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOperationMode:I

    .line 120
    new-instance v0, Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 122
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    .line 123
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->color_view_touch_area_increase:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mColorViewTouchAreaIncrease:I

    .line 125
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->drawer_group_image_top_increase_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mGroupTopMarginIncrease:I

    .line 127
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$drawable;->avatar_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->more_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mMoreLabelText:Ljava/lang/String;

    .line 129
    const v0, -0x6d1e40

    iput v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdayColor:I

    .line 130
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->drawer_birthdays_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdayText:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->drawer_holidays_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mHolidayText:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mPrimaryCalendarText:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->show_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowMoreText:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->show_calendars:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowCalendarsText:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mLastItems:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowHiddenCalendars:Ljava/util/ArrayList;

    .line 142
    iput-object p4, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mClickableViewTypes:Ljava/util/Set;

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->logSyncEnabled()V

    return-void
.end method

.method private getAccountView(Landroid/view/View;Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 343
    invoke-virtual {p2}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getGroupView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 346
    iget v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOperationMode:I

    if-ne v0, v3, :cond_2

    .line 349
    iget-object v6, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    .line 350
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getDrawerSyncUIManager()Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->getSyncState(Landroid/accounts/Account;)Lcom/android/calendar/calendarlist/AccountSyncState;

    move-result-object v7

    .line 351
    sget v0, Lcom/android/calendar/R$id;->sync_icon:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 352
    sget v1, Lcom/android/calendar/R$id;->text_container:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 353
    sget v1, Lcom/android/calendar/R$id;->sync_state_text:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    sget v2, Lcom/android/calendar/R$id;->tile:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 356
    iget v2, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->textId:I

    if-eqz v2, :cond_0

    .line 357
    iget v2, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->textId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 359
    :cond_0
    iget v2, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->iconId:I

    if-eqz v2, :cond_1

    .line 360
    iget v2, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->iconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    :cond_1
    iget v2, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->iconId:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 364
    iget v0, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->textId:I

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 367
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v7, Lcom/android/calendar/calendarlist/AccountSyncState;->iconId:I

    if-eqz v0, :cond_5

    .line 369
    sget v0, Lcom/android/calendar/R$dimen;->tile_horizontal_margin_right_2nd_item:I

    .line 368
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 372
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 375
    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    sget-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->DISABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
    new-instance v0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;

    invoke-direct {v0, p0, v6}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;-><init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;Landroid/accounts/Account;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-virtual {v9, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    invoke-virtual {v9, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getDrawerSyncUIManager()Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->onShowedSyncOff()V

    .line 397
    :cond_2
    :goto_3
    return-object v5

    :cond_3
    move v2, v4

    .line 363
    goto :goto_0

    :cond_4
    move v0, v4

    .line 364
    goto :goto_1

    .line 370
    :cond_5
    sget v0, Lcom/android/calendar/R$dimen;->tile_horizontal_margin_1st_item:I

    goto :goto_2

    .line 391
    :cond_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    invoke-virtual {v9, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 393
    new-instance v0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;

    invoke-direct {v0, p0, v10}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;-><init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_3
.end method

.method private getElementView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    .line 402
    if-nez p1, :cond_0

    .line 403
    iget v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOperationMode:I

    if-nez v0, :cond_1

    .line 404
    sget v0, Lcom/android/calendar/R$layout;->drawer_calendar_item_picker:I

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 409
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->calendar_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    sget v0, Lcom/android/calendar/R$id;->color_square:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 413
    return-object p1

    .line 405
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->drawer_calendar_item:I

    goto :goto_0
.end method

.method private getElementView(Landroid/view/View;Ljava/lang/String;ZI)Landroid/view/View;
    .locals 4

    .prologue
    .line 430
    .line 431
    if-nez p1, :cond_0

    .line 432
    iget v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOperationMode:I

    if-nez v0, :cond_1

    .line 433
    sget v0, Lcom/android/calendar/R$layout;->drawer_calendar_item_picker:I

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 438
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->calendar_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    sget v0, Lcom/android/calendar/R$id;->color_square:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p4, p3}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->setUpColorBox(Landroid/view/View;IZ)V

    .line 442
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    if-eqz p3, :cond_2

    sget v0, Lcom/android/calendar/R$string;->calendar_is_checked:I

    .line 443
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 442
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 446
    return-object p1

    .line 434
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->drawer_calendar_item:I

    goto :goto_0

    .line 443
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->calendar_is_unchecked:I

    goto :goto_1
.end method

.method private getGroupView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    .line 328
    if-nez p1, :cond_0

    .line 329
    iget v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOperationMode:I

    if-nez v0, :cond_1

    .line 330
    sget v0, Lcom/android/calendar/R$layout;->drawer_group_header_item_picker:I

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 335
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->group_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;-><init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 339
    return-object p1

    .line 331
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->drawer_group_header_item:I

    goto :goto_0
.end method

.method private logSyncEnabled()V
    .locals 6

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_sync_warnings:I

    .line 526
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_sync_off_status_in_drawer:I

    .line 527
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/calendar/R$string;->analytics_label_enabled:I

    .line 528
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 525
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    return-void
.end method

.method private logToggleCalendar()V
    .locals 5

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    .line 517
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_toggle_calendar:I

    .line 518
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private saveBirthdayVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdaysSettings:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 203
    iget-boolean v1, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-nez v1, :cond_2

    .line 204
    if-nez v2, :cond_0

    invoke-direct {p0, v0, v3, v5}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_1
    move v2, v0

    .line 215
    goto :goto_0

    :cond_1
    move v0, v3

    .line 204
    goto :goto_1

    .line 205
    :cond_2
    iget-boolean v1, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-eqz v1, :cond_a

    .line 208
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdaysSettings:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdaysSettings:Ljava/util/Map;

    .line 209
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 212
    :cond_6
    if-nez v2, :cond_7

    invoke-direct {p0, v0, v3, v5}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v4

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1

    .line 216
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->sendBatchUpdate(Ljava/util/ArrayList;)V

    .line 218
    :goto_2
    return v2

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    move v2, v3

    goto :goto_2
.end method

.method private saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 542
    iget-boolean v1, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    iget-boolean v2, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    invoke-direct {p0, v1, p2, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->shouldSaveCalendar(ZZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    :goto_0
    return v0

    .line 545
    :cond_0
    iput-boolean p2, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    .line 546
    new-instance v5, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v5, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 547
    iget-boolean v1, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v1, :cond_1

    move v0, v10

    .line 548
    :cond_1
    const-string v1, "visible"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    invoke-virtual {p1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v0}, Lcom/android/calendar/Utils;->isLocalOrHtcLocalCalendar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    if-nez v0, :cond_2

    .line 556
    const-string v0, "sync_events"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/SyncFactory;->getSyncableAccountType()Ljava/lang/String;

    .line 565
    :cond_2
    if-nez p3, :cond_3

    .line 566
    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v2

    .line 567
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v4, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 568
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    :goto_1
    move v0, v10

    .line 576
    goto :goto_0

    .line 570
    :cond_3
    iget-object v0, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 571
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 574
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private sendBatchUpdate(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    .line 534
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mService:Lcom/android/calendar/AsyncQueryService;

    const-string v3, "com.android.calendar"

    const-wide/16 v6, 0x0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V

    .line 535
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x5

    .line 536
    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 538
    :cond_0
    return-void
.end method

.method private setUpColorBox(Landroid/view/View;IZ)V
    .locals 3

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 418
    invoke-static {p2}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    .line 419
    iget v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOperationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 420
    check-cast p1, Lcom/android/calendar/timely/DrawerColorCheckBox;

    .line 421
    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/DrawerColorCheckBox;->setColor(I)V

    .line 422
    invoke-virtual {p1, p3}, Lcom/android/calendar/timely/DrawerColorCheckBox;->setChecked(Z)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 425
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private shouldSaveCalendar(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 582
    if-eq p1, p2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 587
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    .line 591
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDrawerSyncUIManager()Lcom/android/calendar/calendarlist/DrawerSyncUIManager;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v1

    .line 262
    invoke-interface {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v6

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mClickableViewTypes:Ljava/util/Set;

    invoke-interface {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 309
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    :goto_1
    invoke-interface {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getViewType()I

    move-result v2

    .line 317
    if-eqz v2, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    if-lez p1, :cond_1

    .line 319
    iget v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mGroupTopMarginIncrease:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 322
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    return-object v0

    :pswitch_0
    move-object v0, v1

    .line 264
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 265
    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 266
    invoke-static {v2}, Lcom/android/calendar/ExtensionsFactory;->getAccountPhotoFactory(Landroid/content/Context;)Lcom/android/calendar/AccountPhotoFactory;

    move-result-object v7

    .line 267
    invoke-direct {p0, p2, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getAccountView(Landroid/view/View;Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;)Landroid/view/View;

    move-result-object v5

    .line 268
    sget v2, Lcom/android/calendar/R$id;->group_image:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 269
    iget-object v8, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/calendar/AccountPhotoFactory;->getPlaceholder(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v8, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {v7, v8, v2, v0}, Lcom/android/calendar/AccountPhotoFactory;->loadAccountPhoto(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    move-object v0, v5

    .line 272
    goto :goto_0

    :pswitch_1
    move-object v0, v1

    .line 274
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    .line 278
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    .line 277
    invoke-static {v0, v2}, Lcom/android/calendar/calendarlist/CalendarListUtils;->getCountOfNotHiddenCalendars(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowCalendarsText:Ljava/lang/String;

    .line 277
    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getElementView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowMoreText:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    move-object v0, v1

    .line 282
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 283
    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mPrimaryCalendarText:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getCalendarNameToDisplay(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    iget v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    invoke-direct {p0, p2, v5, v2, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getElementView(Landroid/view/View;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_3

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mMoreLabelText:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getGroupView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 289
    sget v0, Lcom/android/calendar/R$id;->group_image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 290
    iget-object v5, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v2

    .line 291
    goto/16 :goto_0

    :pswitch_4
    move-object v0, v1

    .line 293
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    .line 294
    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdayText:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    iget-object v5, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    const-string v7, "preferences_birthdays_color"

    iget v8, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdayColor:I

    .line 295
    invoke-static {v5, v7, v8}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 294
    invoke-direct {p0, p2, v2, v0, v5}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getElementView(Landroid/view/View;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    move-object v0, v1

    .line 299
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    .line 300
    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 301
    invoke-static {v2}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/calendar/prefs/PrefService;->getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 300
    invoke-static {v2}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v2

    .line 302
    iget-object v5, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mHolidayText:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    invoke-direct {p0, p2, v5, v0, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getElementView(Landroid/view/View;Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :cond_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x3

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 452
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    .line 457
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowHiddenCalendars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 461
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->updateItemList()V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 469
    iget-object v3, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 470
    iget-object v3, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :goto_1
    iget-boolean v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-nez v3, :cond_4

    :goto_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->logToggleCalendar()V

    .line 477
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->notifyDataSetChanged()V

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 481
    invoke-static {v1}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->onCalendarToggle(Landroid/accounts/Account;)V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    iget-boolean v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 475
    goto :goto_2

    .line 482
    :cond_5
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    .line 485
    iget-boolean v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-nez v3, :cond_6

    :goto_3
    iput-boolean v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    .line 487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 489
    iget-boolean v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    invoke-direct {p0, v1, v4, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z

    goto :goto_4

    :cond_6
    move v1, v2

    .line 485
    goto :goto_3

    .line 491
    :cond_7
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->logToggleCalendar()V

    .line 492
    invoke-direct {p0, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->sendBatchUpdate(Ljava/util/ArrayList;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 495
    :cond_8
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    .line 498
    iget-boolean v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-nez v3, :cond_9

    :goto_5
    iput-boolean v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    .line 499
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "preferences_birthdays_master_visibility"

    iget-boolean v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 502
    invoke-direct {p0, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveBirthdayVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->logToggleCalendar()V

    .line 504
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 498
    goto :goto_5
.end method

.method public reorderItems()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 595
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowHiddenCalendars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 596
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 597
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 598
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 599
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 600
    iget v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    if-ne v1, v3, :cond_0

    .line 602
    :cond_1
    iget-boolean v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 604
    :goto_1
    iput v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 608
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->updateItemList()V

    .line 609
    return-void
.end method

.method public setBirthdaysSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mBirthdaysSettings:Ljava/util/Map;

    .line 613
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 7

    .prologue
    .line 147
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 148
    invoke-interface {v0, v1, p1}, Lcom/android/calendar/BirthdayManagerInterface;->getPrimaryBirthdayCalendar(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "preferences_birthdays_color"

    iget v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    invoke-static {v1, v2, v0}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mLastItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendar/calendarlist/CalendarListUtils;->processCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mLastItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 163
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 164
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    .line 166
    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "preferences_birthdays_master_visibility"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    .line 169
    invoke-direct {p0, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveBirthdayVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;)Z

    goto :goto_1

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_birthdays_color"

    .line 153
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "preferences_birthdays_color"

    const v2, -0x6d1e40

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 170
    :cond_3
    instance-of v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    if-eqz v1, :cond_1

    .line 171
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;

    .line 172
    iget-object v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 175
    iget-boolean v5, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    iget-boolean v6, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-eq v5, v6, :cond_4

    .line 176
    iget-boolean v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    invoke-direct {p0, v1, v5, v3}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->saveCalendarVisibility(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;ZLjava/util/ArrayList;)Z

    goto :goto_2

    .line 179
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->sendBatchUpdate(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mLastItems:Ljava/util/List;

    .line 185
    invoke-static {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils;->extractAccounts(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->setAccounts(Ljava/util/Set;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->updateItemList()V

    .line 191
    :goto_3
    return-void

    .line 189
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method protected updateItemList()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mLastItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-boolean v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mEnablePostProcess:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;->postProcessItems(Landroid/content/Context;Ljava/util/List;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mShowHiddenCalendars:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mOriginalVisibilities:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/calendarlist/CalendarListUtils;->processHiddenCalendars(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 229
    iget-object v0, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/calendarlist/CalendarListUtils;->sortItems(Landroid/content/Context;Ljava/util/List;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method
