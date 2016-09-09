.class Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;
.super Ljava/lang/Object;
.source "ViewDebugReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportingServiceActionOnClick"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mAction:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mExtras:Landroid/os/Bundle;

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/google/android/calendar/timely/report/DebugReportingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$ReportingServiceActionOnClick;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 57
    return-void
.end method
