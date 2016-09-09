.class Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;
.super Ljava/lang/Object;
.source "HabitsIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/HabitsIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedbackRunnable"
.end annotation


# instance fields
.field mAction:I

.field mEventId:Ljava/lang/Long;

.field mFeedbackText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/alerts/HabitsIntentService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/HabitsIntentService;I)V
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p1, p2}, Lcom/android/calendar/alerts/HabitsIntentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 673
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 676
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 677
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->this$0:Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p2, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mFeedbackText:Ljava/lang/String;

    .line 682
    iput-object p3, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mEventId:Ljava/lang/Long;

    .line 683
    iput p4, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mAction:I

    .line 684
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v0, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mEventId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->this$0:Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mFeedbackText:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 694
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->this$0:Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-virtual {v0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mFeedbackText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mEventId:Ljava/lang/Long;

    iget v3, p0, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;->mAction:I

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Long;I)V

    goto :goto_0
.end method
