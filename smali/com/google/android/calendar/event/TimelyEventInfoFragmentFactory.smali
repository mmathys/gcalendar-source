.class public Lcom/google/android/calendar/event/TimelyEventInfoFragmentFactory;
.super Ljava/lang/Object;
.source "TimelyEventInfoFragmentFactory.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoFragmentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/event/EventInfoFragment;
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p2}, Lcom/android/calendar/event/EventInfoFragment;->createArguments(Lcom/android/calendar/timely/TimelineItem;)Landroid/os/Bundle;

    move-result-object v1

    .line 23
    invoke-static {p1, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventInfoFragment;

    return-object v0
.end method

.method public newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/event/EventInfoFragment;
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p2, p3}, Lcom/android/calendar/event/EventInfoFragment;->createArguments(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;

    move-result-object v1

    .line 34
    invoke-static {p1, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventInfoFragment;

    return-object v0
.end method
