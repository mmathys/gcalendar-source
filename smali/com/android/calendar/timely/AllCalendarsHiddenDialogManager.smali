.class public Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;
.super Landroid/database/DataSetObserver;
.source "AllCalendarsHiddenDialogManager.java"

# interfaces
.implements Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

.field private mAllCalendarsHidden:Z

.field private mAlreadyCheckedOnChange:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/calendarlist/DrawerListAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAlreadyCheckedOnChange:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAllCalendarsHidden:Z

    .line 40
    iput-object p1, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    .line 43
    iget-object v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 44
    return-void
.end method

.method private checkIfShouldShowDialog()V
    .locals 4

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAllCalendarsHidden:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->shouldShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar.timely.allCalendarsHidden.lastChecked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;J)V

    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->showAllCalendarsHiddenDialog(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->logEvent(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private logEvent(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 119
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_sync_warnings:I

    .line 121
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/android/calendar/R$string;->analytics_action_all_calendars_hidden_dialog:I

    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/android/calendar/R$string;->analytics_label_displayed:I

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    .line 120
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    return-void
.end method

.method private shouldShow()Z
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar.timely.allCalendarsHidden.lastChecked"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAllCalendarsHiddenDialog(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->no_visible_calendars_title:I

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->no_visible_calendars_body:I

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->no_visible_calendars_action:I

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager$1;-><init>(Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->areAllCalendarsHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAllCalendarsHidden:Z

    .line 60
    iget-boolean v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAlreadyCheckedOnChange:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->mAlreadyCheckedOnChange:Z

    .line 62
    invoke-direct {p0}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->checkIfShouldShowDialog()V

    .line 64
    :cond_0
    return-void
.end method

.method public onDrawerClosed()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;->checkIfShouldShowDialog()V

    .line 77
    return-void
.end method
