.class public final Lcom/android/calendar/timely/SuggestionRow;
.super Ljava/lang/Object;
.source "SuggestionRow.java"


# instance fields
.field public final bucket:I

.field public final headerName:Ljava/lang/String;

.field public final isBestTime:Z

.field public final omittedAttendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public final suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

.field public final type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    .line 63
    iput-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/SuggestionRow;->bucket:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelineSuggestion;ZI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 90
    iput-boolean p2, p0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    .line 91
    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    .line 93
    iput p3, p0, Lcom/android/calendar/timely/SuggestionRow;->bucket:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    .line 72
    iput-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    .line 74
    iput p2, p0, Lcom/android/calendar/timely/SuggestionRow;->bucket:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/SuggestionRow;->bucket:I

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    instance-of v1, p1, Lcom/android/calendar/timely/SuggestionRow;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/SuggestionRow;

    .line 111
    iget-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v2, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 112
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    iget-boolean v2, p1, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    iget-object v2, p1, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    .line 114
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    iget v2, p1, Lcom/android/calendar/timely/SuggestionRow;->type:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInFirstBucket()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/calendar/timely/SuggestionRow;->bucket:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
