.class public final Lio/grpc/Attributes$Key;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lio/grpc/Attributes$Key;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static of(Ljava/lang/String;)Lio/grpc/Attributes$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/Attributes$Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lio/grpc/Attributes$Key;

    invoke-direct {v0, p0}, Lio/grpc/Attributes$Key;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/grpc/Attributes$Key;->name:Ljava/lang/String;

    return-object v0
.end method
