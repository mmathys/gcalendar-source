.class public Lcom/android/calendarcommon2/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public days:I

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public sign:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendarcommon2/Duration;->sign:I

    .line 41
    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 5

    .prologue
    .line 143
    iget v0, p0, Lcom/android/calendarcommon2/Duration;->sign:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 144
    const v2, 0x93a80

    iget v3, p0, Lcom/android/calendarcommon2/Duration;->weeks:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lcom/android/calendarcommon2/Duration;->days:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendarcommon2/Duration;->hours:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendarcommon2/Duration;->minutes:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendarcommon2/Duration;->seconds:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x54

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    iput v0, p0, Lcom/android/calendarcommon2/Duration;->sign:I

    .line 50
    iput v1, p0, Lcom/android/calendarcommon2/Duration;->weeks:I

    .line 51
    iput v1, p0, Lcom/android/calendarcommon2/Duration;->days:I

    .line 52
    iput v1, p0, Lcom/android/calendarcommon2/Duration;->hours:I

    .line 53
    iput v1, p0, Lcom/android/calendarcommon2/Duration;->minutes:I

    .line 54
    iput v1, p0, Lcom/android/calendarcommon2/Duration;->seconds:I

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 60
    if-ge v3, v0, :cond_1

    .line 124
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 65
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_3

    .line 66
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/calendarcommon2/Duration;->sign:I

    .line 73
    :cond_2
    :goto_0
    if-lt v3, v0, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 78
    const/16 v4, 0x50

    if-eq v2, v4, :cond_4

    .line 79
    new-instance v1, Lcom/android/calendarcommon2/DateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Duration.parse(str=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') expected \'P\' at index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_3
    const/16 v4, 0x2b

    if-eq v2, v4, :cond_2

    move v0, v1

    goto :goto_0

    .line 83
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 85
    if-ne v2, v6, :cond_5

    .line 86
    add-int/lit8 v0, v0, 0x1

    :cond_5
    move v2, v0

    move v0, v1

    .line 90
    :goto_1
    if-ge v2, v3, :cond_0

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 92
    const/16 v5, 0x30

    if-lt v4, v5, :cond_7

    const/16 v5, 0x39

    if-gt v4, v5, :cond_7

    .line 93
    mul-int/lit8 v0, v0, 0xa

    .line 94
    add-int/lit8 v4, v4, -0x30

    add-int/2addr v0, v4

    .line 90
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_7
    const/16 v5, 0x57

    if-ne v4, v5, :cond_8

    .line 97
    iput v0, p0, Lcom/android/calendarcommon2/Duration;->weeks:I

    move v0, v1

    .line 98
    goto :goto_2

    .line 100
    :cond_8
    const/16 v5, 0x48

    if-ne v4, v5, :cond_9

    .line 101
    iput v0, p0, Lcom/android/calendarcommon2/Duration;->hours:I

    move v0, v1

    .line 102
    goto :goto_2

    .line 104
    :cond_9
    const/16 v5, 0x4d

    if-ne v4, v5, :cond_a

    .line 105
    iput v0, p0, Lcom/android/calendarcommon2/Duration;->minutes:I

    move v0, v1

    .line 106
    goto :goto_2

    .line 108
    :cond_a
    const/16 v5, 0x53

    if-ne v4, v5, :cond_b

    .line 109
    iput v0, p0, Lcom/android/calendarcommon2/Duration;->seconds:I

    move v0, v1

    .line 110
    goto :goto_2

    .line 112
    :cond_b
    const/16 v5, 0x44

    if-ne v4, v5, :cond_c

    .line 113
    iput v0, p0, Lcom/android/calendarcommon2/Duration;->days:I

    move v0, v1

    .line 114
    goto :goto_2

    .line 116
    :cond_c
    if-eq v4, v6, :cond_6

    .line 119
    new-instance v0, Lcom/android/calendarcommon2/DateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Duration.parse(str=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\') unexpected char \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' at index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
