.class public Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;
.super Landroid/app/Activity;
.source "ViewDebugReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDescription(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->calendar_inconsistent_details:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 144
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->sync_default_report_details:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->forbidden_deletes_report_details:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/android/calendar/R$layout;->activity_view_consistency_report:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    sget v1, Lcom/android/calendar/R$string;->inconsistency_report:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    sget v1, Lcom/android/calendar/R$drawable;->dogfood_activity_logo:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 69
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_CALENDAR_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "report_type"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 78
    sget v0, Lcom/android/calendar/R$id;->report:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    invoke-direct {p0, v3, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getDescription(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget v0, Lcom/android/calendar/R$id;->send:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    sget v1, Lcom/android/calendar/R$id;->dontSend:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 84
    sget v3, Lcom/android/calendar/R$id;->neverSend:I

    invoke-virtual {p0, v3}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 88
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 89
    sget-object v6, Lcom/google/android/calendar/timely/report/DebugReportingService;->EXTRA_DONT_ASK_AGAIN:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    new-instance v6, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;

    sget-object v7, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_SEND_REPORT:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v9}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;

    sget-object v6, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    invoke-direct {v0, p0, v6, v9}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;

    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v5}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v0, Lcom/android/calendar/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    sget v1, Lcom/android/calendar/R$id;->loading_view:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 101
    new-instance v5, Lcom/android/calendar/timely/LoadingStateManager;

    invoke-direct {v5, v0, v1}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 102
    invoke-virtual {v5}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 104
    new-instance v0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;-><init>(Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;Ljava/lang/String;Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;Landroid/widget/TextView;Lcom/android/calendar/timely/LoadingStateManager;)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method
