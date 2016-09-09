.class public Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;
.super Ljava/lang/Object;
.source "TimelyHolidayPreferences.java"

# interfaces
.implements Lcom/android/calendar/event/data/InputAspectColor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputAspectColorImpl"
.end annotation


# instance fields
.field private final mColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorCache:Lcom/android/calendar/ColorCache;

.field private final mPrimaryAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mPrimaryAccount:Landroid/accounts/Account;

    .line 443
    new-instance v0, Lcom/android/calendar/ColorCache;

    invoke-direct {v0}, Lcom/android/calendar/ColorCache;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColorCache:Lcom/android/calendar/ColorCache;

    .line 444
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 445
    return-void
.end method


# virtual methods
.method public addColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public getColorOptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColorCache:Lcom/android/calendar/ColorCache;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mPrimaryAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/android/calendar/ColorCache;->getColorList(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->getColorOptions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    goto :goto_0
.end method

.method public getUnlistedColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public populateColorCache(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ColorCache;->populate(Landroid/database/Cursor;)V

    .line 485
    return-void
.end method

.method public removeColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method
