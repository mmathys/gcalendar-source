.class public final Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;
.super Ljava/lang/Object;
.source "AppLifecycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;
    }
.end annotation


# instance fields
.field private final callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;-><init>(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    .line 34
    return-void
.end method


# virtual methods
.method public attachToApp(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 38
    return-void
.end method

.method public register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityCreatedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$100(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStarted;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStartedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$200(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStarted;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityResumed;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityResumedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$300(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityResumed;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityPaused;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityPausedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$400(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityPaused;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStopped;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStoppedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$500(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStopped;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_4
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivitySaveInstanceState;

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activitySaveInstanceStateListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$600(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivitySaveInstanceState;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_5
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;

    if-eqz v0, :cond_6

    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityDestroyedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$700(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_6
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToForegroundListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$800(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_7
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    if-eqz v0, :cond_8

    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToBackgroundListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$900(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_8
    return-void
.end method

.method public unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityCreatedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$100(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStarted;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStartedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$200(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityResumed;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityResumedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$300(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityPaused;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityPausedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$400(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStopped;

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStoppedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$500(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivitySaveInstanceState;

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activitySaveInstanceStateListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$600(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_5
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityDestroyedListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$700(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_6
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    if-eqz v0, :cond_7

    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToForegroundListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$800(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    :cond_7
    instance-of v0, p1, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    if-eqz v0, :cond_8

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->callbacks:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;

    # getter for: Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToBackgroundListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->access$900(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_8
    return-void
.end method
