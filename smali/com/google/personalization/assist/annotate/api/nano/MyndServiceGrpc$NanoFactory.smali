.class final Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;
.super Ljava/lang/Object;
.source "MyndServiceGrpc.java"

# interfaces
.implements Lio/grpc/protobuf/nano/MessageNanoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;
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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;->id:I

    .line 123
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
    .line 128
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;->id:I

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :pswitch_0
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;-><init>()V

    .line 169
    :goto_0
    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 170
    return-object v0

    .line 133
    :pswitch_1
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationResponse;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationResponse;-><init>()V

    goto :goto_0

    .line 136
    :pswitch_2
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;-><init>()V

    goto :goto_0

    .line 139
    :pswitch_3
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;-><init>()V

    goto :goto_0

    .line 142
    :pswitch_4
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;-><init>()V

    goto :goto_0

    .line 145
    :pswitch_5
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;-><init>()V

    goto :goto_0

    .line 148
    :pswitch_6
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;-><init>()V

    goto :goto_0

    .line 151
    :pswitch_7
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;-><init>()V

    goto :goto_0

    .line 154
    :pswitch_8
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;-><init>()V

    goto :goto_0

    .line 157
    :pswitch_9
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;-><init>()V

    goto :goto_0

    .line 160
    :pswitch_a
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;-><init>()V

    goto :goto_0

    .line 163
    :pswitch_b
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;-><init>()V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
