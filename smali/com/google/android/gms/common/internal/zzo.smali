.class public final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;


# static fields
.field public static final zzapy:I

.field private static final zzapz:Ljava/lang/String;


# instance fields
.field private final zzapA:Ljava/lang/String;

.field private final zzapB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " PII_LOG"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Lcom/google/android/gms/common/internal/zzo;->zzapy:I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/internal/zzo;->zzapz:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/zzo;->zzapz:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log tag cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "tag \"%s\" is longer than the %d character maximum"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzapA:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/internal/zzo;->zzapz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzapB:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzapB:Ljava/lang/String;

    goto :goto_1
.end method

.method private zzce(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzapB:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzapB:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public zzH(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzo;->zzcX(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/zzo;->zzce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zzcX(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzapA:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
