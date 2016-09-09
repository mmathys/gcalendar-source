.class Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;
.super Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;
.source "GrooveEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrooveAspectsImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveEditManager;


# direct methods
.method private constructor <init>(Lcom/android/calendar/groove/GrooveEditManager;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;-><init>(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/groove/GrooveEditManager;Lcom/android/calendar/groove/GrooveEditManager$1;)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;-><init>(Lcom/android/calendar/groove/GrooveEditManager;)V

    return-void
.end method


# virtual methods
.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    return v0
.end method

.method public canChangeTime()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveEditManager;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    return v0
.end method

.method public canChangeVisibility()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    return v0
.end method

.method public enableSmartNotifications(Z)V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # invokes: Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminders()Lcom/google/android/calendar/api/HabitReminders;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$100(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    .line 513
    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    new-instance v1, Lcom/google/android/calendar/api/HabitReminders;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, p1}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    # setter for: Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;
    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveEditManager;->access$202(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitReminders;

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    new-instance v2, Lcom/google/android/calendar/api/HabitReminders;

    iget-boolean v3, v0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-direct {v2, v3, v0, p1, p1}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    # setter for: Lcom/android/calendar/groove/GrooveEditManager;->mNewReminders:Lcom/google/android/calendar/api/HabitReminders;
    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveEditManager;->access$202(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitReminders;

    goto :goto_0
.end method

.method public smartNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveAspectsImpl;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # invokes: Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminders()Lcom/google/android/calendar/api/HabitReminders;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveEditManager;->access$100(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    .line 524
    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, v1, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
