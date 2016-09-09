.class public Lcom/android/calendar/prefs/PrefServiceImpl;
.super Ljava/lang/Object;
.source "PrefServiceImpl.java"

# interfaces
.implements Lcom/android/calendar/prefs/PrefService;


# instance fields
.field protected mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->getFallbackForHolidays()Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->getBackground()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/prefs/PrefServiceImpl;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 30
    return-void
.end method


# virtual methods
.method public getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/prefs/PrefServiceImpl;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/calendar/timely/PrimaryAccountSelector;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/prefs/PrefServiceImpl;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method
