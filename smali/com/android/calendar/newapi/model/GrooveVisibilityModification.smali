.class public Lcom/android/calendar/newapi/model/GrooveVisibilityModification;
.super Lcom/android/calendar/newapi/model/Holder;
.source "GrooveVisibilityModification.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/VisibilityModification;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/Holder",
        "<",
        "Lcom/google/android/calendar/api/HabitModifications;",
        ">;",
        "Lcom/android/calendar/newapi/model/VisibilityModification;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/model/Holder;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveVisibilityModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;->fromHabitVisibility(I)I

    move-result v0

    return v0
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveVisibilityModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-static {p1}, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;->toHabitVisibility(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 27
    return-void
.end method
