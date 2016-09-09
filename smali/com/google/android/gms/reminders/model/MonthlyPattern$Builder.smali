.class public Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/MonthlyPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbBo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbBp:Ljava/lang/Integer;

.field private zzbBq:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addMonthDay([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBo:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBo:Ljava/util/List;

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public build()Lcom/google/android/gms/reminders/model/MonthlyPattern;
    .locals 5

    new-instance v0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBo:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBp:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBq:Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-object v0
.end method

.method public setWeekDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Invalid constant for Weekday. Use value in ModelConstants"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBp:Ljava/lang/Integer;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWeekDayNumber(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->zzbBq:Ljava/lang/Integer;

    return-object p0
.end method
