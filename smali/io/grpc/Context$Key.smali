.class public Lio/grpc/Context$Key;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/Context$Key;->name:Ljava/lang/String;

    .line 792
    iput-object p2, p0, Lio/grpc/Context$Key;->defaultValue:Ljava/lang/Object;

    .line 793
    return-void
.end method


# virtual methods
.method public get(Lio/grpc/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 808
    # invokes: Lio/grpc/Context;->lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;
    invoke-static {p1, p0}, Lio/grpc/Context;->access$1100(Lio/grpc/Context;Lio/grpc/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 809
    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/Context$Key;->defaultValue:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lio/grpc/Context$Key;->name:Ljava/lang/String;

    return-object v0
.end method
