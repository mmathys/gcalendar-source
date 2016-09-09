.class public interface abstract Lio/grpc/CallCredentials;
.super Ljava/lang/Object;
.source "CallCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/CallCredentials$MetadataApplier;
    }
.end annotation


# static fields
.field public static final ATTR_AUTHORITY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key",
            "<",
            "Lio/grpc/SecurityLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "io.grpc.CallCredentials.securityLevel"

    .line 49
    invoke-static {v0}, Lio/grpc/Attributes$Key;->of(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/CallCredentials;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    .line 57
    const-string v0, "io.grpc.CallCredentials.authority"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->of(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/CallCredentials;->ATTR_AUTHORITY:Lio/grpc/Attributes$Key;

    return-void
.end method


# virtual methods
.method public abstract applyRequestMetadata(Lio/grpc/MethodDescriptor;Lio/grpc/Attributes;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Attributes;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/CallCredentials$MetadataApplier;",
            ")V"
        }
    .end annotation
.end method
