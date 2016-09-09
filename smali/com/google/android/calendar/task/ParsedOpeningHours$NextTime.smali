.class Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;
.super Ljava/lang/Object;
.source "ParsedOpeningHours.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ParsedOpeningHours;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NextTime"
.end annotation


# instance fields
.field private final duration:I

.field private final isOpen:Z

.field private final weekSecond:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean p1, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->isOpen:Z

    .line 129
    iput p2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->duration:I

    .line 130
    iput p3, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->weekSecond:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->duration:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :cond_3
    check-cast p1, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    .line 154
    iget-boolean v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->isOpen:Z

    iget-boolean v3, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->isOpen:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->duration:I

    iget v3, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->duration:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->weekSecond:I

    iget v3, p1, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->weekSecond:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getWeekSecond()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->weekSecond:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->isOpen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->weekSecond:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->isOpen:Z

    return v0
.end method
