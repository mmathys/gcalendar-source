.class public Lcom/android/calendar/NewEventTimeChangedListenerHolder;
.super Ljava/lang/Object;
.source "NewEventTimeChangedListenerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/calendar/NewEventTimeChangedListenerHolder;


# instance fields
.field private mCreateNewEventTime:J

.field private final mCreateNewEventTimeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    invoke-direct {v0}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;-><init>()V

    sput-object v0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->INSTANCE:Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTime:J

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTimeChangedListeners:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->INSTANCE:Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    return-object v0
.end method


# virtual methods
.method public getCreateNewEventTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTime:J

    return-wide v0
.end method

.method public registerCreateNewEventTimeListener(Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTimeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public setCreateNewEventTime(J)V
    .locals 3

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    return-void

    .line 44
    :cond_1
    iput-wide p1, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTime:J

    .line 45
    iget-object v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTimeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v0, p1, p2}, Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;->onCreateNewEventTimeChanged(J)V

    goto :goto_0
.end method

.method public unregisterCreateNewEventTimeListeners()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->mCreateNewEventTimeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    return-void
.end method
