.class public abstract Lio/grpc/NameResolver$Factory;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# static fields
.field public static final PARAMS_DEFAULT_PORT:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "params-default-port"

    .line 91
    invoke-static {v0}, Lio/grpc/Attributes$Key;->of(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/NameResolver$Factory;->PARAMS_DEFAULT_PORT:Lio/grpc/Attributes$Key;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDefaultScheme()Ljava/lang/String;
.end method

.method public abstract newNameResolver(Ljava/net/URI;Lio/grpc/Attributes;)Lio/grpc/NameResolver;
.end method
