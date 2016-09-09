.class public Lcom/google/android/calendar/api/HabitFilterOptions;
.super Ljava/lang/Object;
.source "HabitFilterOptions.java"


# static fields
.field static final DEFAULT:Lcom/google/android/calendar/api/HabitFilterOptions;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mActiveAfterFilter:Ljava/lang/Long;

.field private mCalendarId:Ljava/lang/String;

.field private mDeletionStatusFilter:Ljava/lang/Integer;

.field private mDirtyFilter:Ljava/lang/Boolean;

.field private mFilterMode:I

.field private mIdFilter:[Ljava/lang/String;

.field private mLastSyncedFilter:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitFilterOptions;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitFilterOptions;->DEFAULT:Lcom/google/android/calendar/api/HabitFilterOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mFilterMode:I

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mLastSyncedFilter:Ljava/lang/Boolean;

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mDeletionStatusFilter:Ljava/lang/Integer;

    .line 37
    iput-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mAccountName:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mCalendarId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method getActiveAfter()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mActiveAfterFilter:Ljava/lang/Long;

    return-object v0
.end method

.method getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mCalendarId:Ljava/lang/String;

    return-object v0
.end method

.method getDeletionStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mDeletionStatusFilter:Ljava/lang/Integer;

    return-object v0
.end method

.method getDirty()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mDirtyFilter:Ljava/lang/Boolean;

    return-object v0
.end method

.method getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mIdFilter:[Ljava/lang/String;

    return-object v0
.end method

.method getLastSynced()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mLastSyncedFilter:Ljava/lang/Boolean;

    return-object v0
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mFilterMode:I

    return v0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mDirtyFilter:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mLastSyncedFilter:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mIdFilter:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mDeletionStatusFilter:Ljava/lang/Integer;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mAccountName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mCalendarId:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mActiveAfterFilter:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;
    .locals 1

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mAccountName:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setActiveAfter(Ljava/lang/Long;)Lcom/google/android/calendar/api/HabitFilterOptions;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mActiveAfterFilter:Ljava/lang/Long;

    .line 168
    return-object p0
.end method

.method public setAnd()Lcom/google/android/calendar/api/HabitFilterOptions;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mFilterMode:I

    .line 88
    return-object p0
.end method

.method public setCalendarId(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;
    .locals 1

    .prologue
    .line 158
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mCalendarId:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setDirty(Ljava/lang/Boolean;)Lcom/google/android/calendar/api/HabitFilterOptions;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitFilterOptions;->mDirtyFilter:Ljava/lang/Boolean;

    .line 105
    return-object p0
.end method
