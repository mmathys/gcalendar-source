.class final Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
.end annotation


# instance fields
.field final hash:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILedu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .line 198
    iput p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    .line 199
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 200
    iput-object p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 201
    return-void
.end method

.method static final newArray(I)[Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 1

    .prologue
    .line 204
    new-array v0, p0, [Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap$HashEntry;

    return-object v0
.end method
