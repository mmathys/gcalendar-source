.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;
.super Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation


# instance fields
.field private final synthetic this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    .line 1131
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1132
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1144
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1145
    :cond_0
    invoke-super {p0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-object v0
.end method
