.class Lcom/google/android/calendar/event/screen/TaskScreen$3;
.super Ljava/lang/Object;
.source "TaskScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/AccountSegment$AccountProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/TaskScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/TaskScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/TaskScreen;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$3;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$3;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getOrganizer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
