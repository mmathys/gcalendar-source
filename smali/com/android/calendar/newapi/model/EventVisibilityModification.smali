.class public Lcom/android/calendar/newapi/model/EventVisibilityModification;
.super Lcom/android/calendar/newapi/model/Holder;
.source "EventVisibilityModification.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/VisibilityModification;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/Holder",
        "<",
        "Lcom/google/android/calendar/api/EventModifications;",
        ">;",
        "Lcom/android/calendar/newapi/model/VisibilityModification;"
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
.method public getVisibility()I
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventVisibilityModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->fromEventVisibility(I)I

    move-result v0

    return v0
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventVisibilityModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-static {p1}, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->toEventVisibility(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setVisibility(I)Lcom/google/android/calendar/api/EventModifications;

    .line 25
    return-void
.end method
