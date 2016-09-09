.class Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;
.super Lcom/android/calendar/CreateFabFragment$CreateFabStack;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainFabStack"
.end annotation


# instance fields
.field private speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 1

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;-><init>()V

    .line 3245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/AllInOneCalendarActivity$1;)V
    .locals 0

    .prologue
    .line 3243
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    return-void
.end method


# virtual methods
.method findCreateFab()Landroid/view/View;
    .locals 2

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    sget v1, Lcom/android/calendar/R$id;->floating_action_button:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findMainPane()Landroid/view/View;
    .locals 2

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    sget v1, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getCreateFabDay()Lcom/android/calendar/time/Time;
    .locals 4

    .prologue
    .line 3259
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$300(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 3260
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 3261
    return-object v0
.end method

.method public getSpeedDial()Lcom/android/calendar/SpeedDialLayout;
    .locals 5

    .prologue
    .line 3271
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3272
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    if-nez v0, :cond_0

    .line 3274
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 3276
    invoke-static {v0}, Lcom/android/calendar/FullScreenManager;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/FullScreenManager;

    move-result-object v1

    .line 3277
    new-instance v2, Lcom/android/calendar/SpeedDialLayout;

    const/4 v3, 0x0

    sget v4, Lcom/android/calendar/R$style;->SpeedDial:I

    invoke-direct {v2, v0, v3, v4}, Lcom/android/calendar/SpeedDialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    .line 3279
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    new-instance v3, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack$1;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/SpeedDialLayout;->addEndSpeedDialFadeOutListener(Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;)V

    .line 3286
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/FullScreenManager;->addView(Landroid/app/Activity;Landroid/view/View;)V

    .line 3288
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    .line 3290
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public isSpeedDialExpanded()Z
    .locals 1

    .prologue
    .line 3298
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3299
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    .line 3301
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/SpeedDialLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3300
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    goto :goto_0

    .line 3301
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeSpeedDial()V
    .locals 2

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->removeFullScreenView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$5000(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/view/View;)V

    .line 3307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->speedDialLayout:Lcom/android/calendar/SpeedDialLayout;

    .line 3308
    return-void
.end method
