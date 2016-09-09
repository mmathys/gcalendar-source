.class final Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;
.super Ljava/lang/Object;
.source "AppLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Callbacks"
.end annotation


# instance fields
.field private final activityCreatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;",
            ">;"
        }
    .end annotation
.end field

.field private final activityDestroyedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;",
            ">;"
        }
    .end annotation
.end field

.field private final activityPausedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityPaused;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResumedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityResumed;",
            ">;"
        }
    .end annotation
.end field

.field private final activitySaveInstanceStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivitySaveInstanceState;",
            ">;"
        }
    .end annotation
.end field

.field private final activityStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStarted;",
            ">;"
        }
    .end annotation
.end field

.field private final activityStoppedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStopped;",
            ">;"
        }
    .end annotation
.end field

.field private final appToBackgroundListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;",
            ">;"
        }
    .end annotation
.end field

.field private final appToForegroundListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;",
            ">;"
        }
    .end annotation
.end field

.field private lastForegroundState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityCreatedListeners:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStartedListeners:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityResumedListeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityPausedListeners:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStoppedListeners:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activitySaveInstanceStateListeners:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityDestroyedListeners:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToForegroundListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToBackgroundListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$1;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityCreatedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStartedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityResumedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityPausedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStoppedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activitySaveInstanceStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityDestroyedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToForegroundListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;)Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToBackgroundListeners:Ljava/util/List;

    return-object v0
.end method

.method private checkVisibilityAndNotifyListeners(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 186
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStats;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->lastForegroundState:Ljava/lang/Boolean;

    if-ne v1, v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const-string v0, "AppLifecycleTracker"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "AppLifecycleTracker"

    const-string v2, "App transition to foreground"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToForegroundListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    .line 195
    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;->onAppToForeground()V

    goto :goto_1

    .line 198
    :cond_2
    const-string v0, "AppLifecycleTracker"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "AppLifecycleTracker"

    const-string v2, "App transition to background"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->appToBackgroundListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    .line 202
    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;->onAppToBackground()V

    goto :goto_2

    .line 205
    :cond_4
    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->lastForegroundState:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 210
    const-string v0, "AppLifecycleTracker"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "AppLifecycleTracker"

    invoke-static {p2}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStats;->isAppInForeground(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 127
    const-string v0, "onActivityCreated"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityCreatedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 179
    const-string v0, "onActivityDestroyed"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityDestroyedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;

    .line 181
    invoke-interface {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityDestroyed;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 153
    const-string v0, "onActivityPaused"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityPausedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityPaused;

    .line 155
    invoke-interface {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityPaused;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 145
    const-string v0, "onActivityResumed"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityResumedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityResumed;

    .line 147
    invoke-interface {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityResumed;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 171
    const-string v0, "onActivitySaveInstanceState"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activitySaveInstanceStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivitySaveInstanceState;

    .line 173
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivitySaveInstanceState;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 135
    const-string v0, "onActivityStarted"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStartedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStarted;

    .line 137
    invoke-interface {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStarted;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->checkVisibilityAndNotifyListeners(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 161
    const-string v0, "onActivityStopped"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->dumpVisibilityState(Ljava/lang/String;Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->activityStoppedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStopped;

    .line 163
    invoke-interface {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityStopped;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker$Callbacks;->checkVisibilityAndNotifyListeners(Landroid/content/Context;)V

    .line 167
    return-void
.end method
