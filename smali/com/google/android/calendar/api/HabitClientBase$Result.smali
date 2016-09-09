.class public Lcom/google/android/calendar/api/HabitClientBase$Result;
.super Ljava/lang/Object;
.source "HabitClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitClient$CreateResult;
.implements Lcom/google/android/calendar/api/HabitClient$GenericResult;
.implements Lcom/google/android/calendar/api/HabitClient$ListResult;
.implements Lcom/google/android/calendar/api/HabitClient$ReadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Result"
.end annotation


# instance fields
.field private final mCount:I

.field private final mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private final mHabit:Lcom/google/android/calendar/api/Habit;

.field private final mHabits:[Lcom/google/android/calendar/api/Habit;

.field private final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method private constructor <init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p2, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mCount:I

    .line 37
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 38
    iput-object p3, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 39
    iput-object p4, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 40
    iput-object p5, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mHabits:[Lcom/google/android/calendar/api/Habit;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mCount:I

    .line 45
    iput-object v1, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 46
    iput-object v1, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 47
    iput-object v1, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mHabits:[Lcom/google/android/calendar/api/Habit;

    .line 48
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mCount:I

    return v0
.end method

.method public getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    return-object v0
.end method

.method public getHabit()Lcom/google/android/calendar/api/Habit;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mHabit:Lcom/google/android/calendar/api/Habit;

    return-object v0
.end method

.method public getHabits()[Lcom/google/android/calendar/api/Habit;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mHabits:[Lcom/google/android/calendar/api/Habit;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
