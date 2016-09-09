.class public Lcom/android/calendar/newapi/model/GrooveColorModification;
.super Lcom/android/calendar/newapi/model/Holder;
.source "GrooveColorModification.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/ColorModification;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/Holder",
        "<",
        "Lcom/google/android/calendar/api/HabitModifications;",
        ">;",
        "Lcom/android/calendar/newapi/model/ColorModification;"
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
.method public getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveColorModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveColorModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitModifications;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    .line 28
    return-void
.end method
