.class public Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;
.super Ljava/lang/Object;
.source "MutableRecurrenceDataImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/MutableRecurrenceData;


# instance fields
.field private count:I

.field private final exdateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field private interval:I

.field private final monthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final monthdayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRecurrenceProto:Ljava/lang/Object;

.field private final rdateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final weekList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final weekdayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;",
            ">;"
        }
    .end annotation
.end field

.field private final yeardayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;-><init>(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 45
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 46
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    .line 49
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    .line 50
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    .line 54
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    .line 60
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 62
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->count:I

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->hasUntil()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getUntil()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->hasInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getInterval()I

    move-result v0

    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->interval:I

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getWeekdayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getMonthdayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getYeardayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getWeekList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getMonthList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getRdateList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getExdateList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->mutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    .line 80
    return-void

    .line 61
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mutableCopyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static mutableEmptyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->count:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 97
    iput v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->interval:I

    .line 98
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    return-void
.end method


# virtual methods
.method public freeze()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot freeze UNSUPPORTED rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne v0, v1, :cond_1

    .line 113
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;-><init>(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasCount()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 133
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->count:I

    return v0
.end method

.method public getExdateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    return-object v0
.end method

.method public getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasInterval()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 179
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->interval:I

    return v0
.end method

.method public getMonthList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    return-object v0
.end method

.method public getMonthdayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    return-object v0
.end method

.method getOriginalRecurrenceProto()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    return-object v0
.end method

.method public getRdateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    return-object v0
.end method

.method public getUntil()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasUntil()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 156
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getWeekList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    return-object v0
.end method

.method public getWeekdayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    return-object v0
.end method

.method public getYeardayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    return-object v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->count:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInterval()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->interval:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUntil()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCount()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->count:I

    .line 146
    return-void
.end method

.method public removeInterval()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->interval:I

    .line 191
    return-void
.end method

.method public removeUntil()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 169
    return-void
.end method

.method public setCount(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasUntil()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 139
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 140
    iput p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->count:I

    .line 141
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 139
    goto :goto_1
.end method

.method public setFreq(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 127
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->reset()V

    .line 128
    return-void
.end method

.method public setInterval(I)V
    .locals 1

    .prologue
    .line 184
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 185
    iput p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->interval:I

    .line 186
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUntil(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasCount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 162
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 164
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
