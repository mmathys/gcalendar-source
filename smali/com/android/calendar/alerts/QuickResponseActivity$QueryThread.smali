.class Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;
.super Ljava/lang/Thread;
.source "QuickResponseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/QuickResponseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final mBody:Ljava/lang/String;

.field final mEventId:J

.field final synthetic this$0:Lcom/android/calendar/alerts/QuickResponseActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/QuickResponseActivity;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 109
    iput-wide p2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mEventId:J

    .line 110
    iput-object p4, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mBody:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v0, v1}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;-><init>(Landroid/content/Context;)V

    iget-wide v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mEventId:J

    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->mBody:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createEmailIntent(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-virtual {v1, v0}, Lcom/android/calendar/alerts/QuickResponseActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/QuickResponseActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    iget-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->this$0:Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/QuickResponseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread$1;-><init>(Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
