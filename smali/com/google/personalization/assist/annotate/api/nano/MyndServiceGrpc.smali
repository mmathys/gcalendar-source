.class public Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;
.super Ljava/lang/Object;
.source "MyndServiceGrpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;,
        Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;
    }
.end annotation


# static fields
.field public static final METHOD_ANNOTATE:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_ASSIST:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_LOG:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;",
            "Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_SCHEDULE:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;",
            "Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_SUGGEST:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_TEMPLATED_SUGGEST:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;",
            "Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "task_assist.MyndService"

    const-string v2, "Annotate"

    .line 39
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 41
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 43
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 37
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_ANNOTATE:Lio/grpc/MethodDescriptor;

    .line 50
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "task_assist.MyndService"

    const-string v2, "Suggest"

    .line 53
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 55
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 57
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 51
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_SUGGEST:Lio/grpc/MethodDescriptor;

    .line 64
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "task_assist.MyndService"

    const-string v2, "Assist"

    .line 67
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 69
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 71
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 65
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_ASSIST:Lio/grpc/MethodDescriptor;

    .line 78
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "task_assist.MyndService"

    const-string v2, "Log"

    .line 81
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 83
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 85
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 79
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_LOG:Lio/grpc/MethodDescriptor;

    .line 92
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "task_assist.MyndService"

    const-string v2, "Schedule"

    .line 95
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 97
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 99
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 93
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_SCHEDULE:Lio/grpc/MethodDescriptor;

    .line 106
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "task_assist.MyndService"

    const-string v2, "TemplatedSuggest"

    .line 109
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 111
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$NanoFactory;-><init>(I)V

    .line 113
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 107
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_TEMPLATED_SUGGEST:Lio/grpc/MethodDescriptor;

    .line 106
    return-void
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;-><init>(Lio/grpc/Channel;Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$1;)V

    return-object v0
.end method
