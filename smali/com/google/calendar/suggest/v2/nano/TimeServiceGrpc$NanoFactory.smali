.class final Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;
.super Ljava/lang/Object;
.source "TimeServiceGrpc.java"

# interfaces
.implements Lio/grpc/protobuf/nano/MessageNanoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NanoFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/protobuf/nano/MessageNanoFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final id:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;->id:I

    .line 56
    return-void
.end method


# virtual methods
.method public newInstance()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;->id:I

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :pswitch_0
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;-><init>()V

    .line 72
    :goto_0
    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 73
    return-object v0

    .line 66
    :pswitch_1
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;-><init>()V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
