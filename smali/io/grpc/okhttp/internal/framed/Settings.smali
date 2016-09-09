.class public final Lio/grpc/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getHeaderTableSize()I
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x2

    .line 147
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getMaxFrameSize(I)I
    .locals 2

    .prologue
    .line 183
    const/16 v0, 0x20

    .line 184
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method public isSet(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 116
    shl-int v1, v0, p1

    .line 117
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(III)Lio/grpc/okhttp/internal/framed/Settings;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 111
    :goto_0
    return-object p0

    .line 97
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 98
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v1, v0

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    .line 99
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 100
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v1, v0

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    .line 104
    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 105
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    .line 110
    :goto_2
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    aput p3, v0, p1

    goto :goto_0

    .line 102
    :cond_1
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    goto :goto_1

    .line 107
    :cond_2
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    goto :goto_2
.end method

.method size()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
