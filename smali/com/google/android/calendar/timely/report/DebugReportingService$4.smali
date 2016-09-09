.class Lcom/google/android/calendar/timely/report/DebugReportingService$4;
.super Ljava/lang/Object;
.source "DebugReportingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/report/DebugReportingService;->notifyUserAboutStatus(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/report/DebugReportingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$4;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    iput-object p2, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$4;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$4;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method
