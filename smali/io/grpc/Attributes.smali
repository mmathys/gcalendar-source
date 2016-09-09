.class public final Lio/grpc/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Attributes$Builder;,
        Lio/grpc/Attributes$Key;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/grpc/Attributes;


# instance fields
.field private final data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lio/grpc/Attributes$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lio/grpc/Attributes;

    invoke-direct {v0}, Lio/grpc/Attributes;-><init>()V

    sput-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Attributes$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lio/grpc/Attributes;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/Attributes;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/Attributes$Builder;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lio/grpc/Attributes$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Attributes$Builder;-><init>(Lio/grpc/Attributes$1;)V

    return-object v0
.end method


# virtual methods
.method public get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
