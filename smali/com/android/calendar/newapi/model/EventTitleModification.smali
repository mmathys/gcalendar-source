.class public Lcom/android/calendar/newapi/model/EventTitleModification;
.super Lcom/android/calendar/newapi/model/Holder;
.source "EventTitleModification.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/TitleModification;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/Holder",
        "<",
        "Lcom/google/android/calendar/api/EventModifications;",
        ">;",
        "Lcom/android/calendar/newapi/model/TitleModification;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/model/Holder;-><init>(Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventTitleModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventTitleModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/EventModifications;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 25
    return-void
.end method
