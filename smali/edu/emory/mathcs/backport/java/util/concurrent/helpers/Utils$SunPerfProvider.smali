.class final Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SunPerfProvider"
.end annotation


# instance fields
.field final divisor:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final multiplier:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final perf:Lsun/misc/Perf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$2;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$2;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Perf;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->perf:Lsun/misc/Perf;

    .line 216
    const-wide/32 v0, 0x3b9aca00

    .line 217
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->perf:Lsun/misc/Perf;

    invoke-virtual {v2}, Lsun/misc/Perf;->highResFrequency()J

    move-result-wide v2

    .line 218
    # invokes: Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->gcd(JJ)J
    invoke-static {v0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->access$000(JJ)J

    move-result-wide v4

    .line 219
    div-long/2addr v0, v4

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->multiplier:J

    .line 220
    div-long v0, v2, v4

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->divisor:J

    .line 221
    return-void
.end method
