.class public final enum Lio/grpc/MethodDescriptor$MethodType;
.super Ljava/lang/Enum;
.source "MethodDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/MethodDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/MethodDescriptor$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum UNARY:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum UNKNOWN:Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "UNARY"

    invoke-direct {v0, v1, v2}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 70
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "CLIENT_STREAMING"

    invoke-direct {v0, v1, v3}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 75
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "SERVER_STREAMING"

    invoke-direct {v0, v1, v4}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 80
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "BIDI_STREAMING"

    invoke-direct {v0, v1, v5}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 86
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNKNOWN:Lio/grpc/MethodDescriptor$MethodType;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lio/grpc/MethodDescriptor$MethodType;

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNKNOWN:Lio/grpc/MethodDescriptor$MethodType;

    aput-object v1, v0, v6

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->$VALUES:[Lio/grpc/MethodDescriptor$MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->$VALUES:[Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0}, [Lio/grpc/MethodDescriptor$MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/MethodDescriptor$MethodType;

    return-object v0
.end method
