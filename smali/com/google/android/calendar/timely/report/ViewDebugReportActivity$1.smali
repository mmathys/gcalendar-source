.class Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;
.super Landroid/os/AsyncTask;
.source "ViewDebugReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

.field final synthetic val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$loadingManager:Lcom/android/calendar/timely/LoadingStateManager;

.field final synthetic val$reportView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;Ljava/lang/String;Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;Landroid/widget/TextView;Lcom/android/calendar/timely/LoadingStateManager;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->this$0:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    iput-object p2, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    iput-object p4, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$reportView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$loadingManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->this$0:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    iget-object v2, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    # getter for: Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load report"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    # getter for: Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Null or empty report contents"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->this$0:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    sget v1, Lcom/android/calendar/R$string;->error_loading_report:I

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    const-class v2, Lcom/google/android/calendar/timely/report/DebugReportingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    invoke-virtual {v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    invoke-virtual {v1}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$activity:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->this$0:Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$reportView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity$1;->val$loadingManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    goto :goto_0
.end method
