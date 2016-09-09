.class final Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;
.super Landroid/os/AsyncTask;
.source "GoogleFeedbackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V
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
        "Lcom/google/android/gms/feedback/FeedbackOptions;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$googleHelp:Lcom/google/android/gms/googlehelp/GoogleHelp;

.field final synthetic val$screenshotBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/app/Activity;Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$screenshotBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$googleHelp:Lcom/google/android/gms/googlehelp/GoogleHelp;

    iput-object p4, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;-><init>()V

    .line 307
    iget-object v1, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$screenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->setScreenshot(Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 309
    iget-object v1, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->addEssentialDataToFeedback(Lcom/google/android/gms/feedback/FeedbackOptions$Builder;Landroid/content/Context;)V

    .line 311
    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->build()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$googleHelp:Lcom/google/android/gms/googlehelp/GoogleHelp;

    iget-object v1, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->setFeedbackOptions(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    .line 317
    iget-object v0, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$googleHelp:Lcom/google/android/gms/googlehelp/GoogleHelp;

    invoke-virtual {v0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->buildHelpIntent()Landroid/content/Intent;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;

    iget-object v2, p0, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->launch(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Lcom/google/android/gms/feedback/FeedbackOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils$2;->onPostExecute(Lcom/google/android/gms/feedback/FeedbackOptions;)V

    return-void
.end method
