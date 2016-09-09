.class public Lcom/google/android/calendar/api/EventFactoryImpl;
.super Ljava/lang/Object;
.source "EventFactoryImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/EventFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyEvent(Lcom/google/android/calendar/api/Event;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 19
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 20
    new-instance v0, Lcom/google/android/calendar/api/EventModificationsImpl;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/EventModificationsImpl;-><init>(Lcom/google/android/calendar/api/Event;)V

    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
