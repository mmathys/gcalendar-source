.class public Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;
.super Ljava/lang/Object;
.source "ImmutableRecurrenceDataImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;


# instance fields
.field private final count:I

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

.field private final freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field private final interval:I

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

.field private final until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

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
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 43
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    .line 45
    iput v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->count:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 47
    iput v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->interval:I

    .line 49
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    .line 50
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableEmptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    .line 56
    return-void

    :cond_1
    move v0, v1

    .line 40
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 65
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getOriginalRecurrenceProto()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->count:I

    .line 68
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasUntil()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getUntil()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 69
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->hasInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getInterval()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->interval:I

    .line 71
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getWeekdayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getMonthdayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getYeardayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getWeekList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getMonthList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getRdateList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;->getExdateList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    .line 78
    return-void

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static immutableCopyOf(Ljava/util/List;)Ljava/util/List;
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
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static immutableEmptyList()Ljava/util/List;
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
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    .line 108
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    .line 109
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->count:I

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 111
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->interval:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->interval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

    .line 113
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    .line 114
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    .line 115
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekList:Ljava/util/List;

    .line 116
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthList:Ljava/util/List;

    .line 117
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    .line 118
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    .line 119
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->hasCount()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 141
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->count:I

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
    .line 203
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->exdateList:Ljava/util/List;

    return-object v0
.end method

.method public getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->hasInterval()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 163
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->interval:I

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
    .line 193
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthList:Ljava/util/List;

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
    .line 178
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->monthdayList:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalRecurrenceProto()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

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
    .line 198
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->rdateList:Ljava/util/List;

    return-object v0
.end method

.method public getUntil()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->hasUntil()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

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
    .line 188
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekList:Ljava/util/List;

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
    .line 173
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->weekdayList:Ljava/util/List;

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
    .line 183
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->yeardayList:Ljava/util/List;

    return-object v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->count:I

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
    .line 168
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->interval:I

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
    .line 157
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->until:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mutate()Lcom/google/calendar/v2/client/service/api/events/MutableRecurrenceData;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot mutate UNSUPPORTED rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne v0, v1, :cond_1

    .line 128
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->freq:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->originalRecurrenceProto:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;-><init>(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;Ljava/lang/Object;)V

    .line 130
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableRecurrenceDataImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;)V

    goto :goto_0
.end method
