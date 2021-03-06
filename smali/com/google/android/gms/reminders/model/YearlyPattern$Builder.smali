.class public Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/YearlyPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

.field private zzbCA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addYearMonth([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->zzbCA:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->zzbCA:Ljava/util/List;

    :cond_0
    array-length v4, p1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x5

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x7

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0xb

    if-eq v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0xc

    if-ne v0, v6, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    const-string v6, "Invalid constant for Month. Use value in ModelConstants"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->zzbCA:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public build()Lcom/google/android/gms/reminders/model/YearlyPattern;
    .locals 4

    new-instance v0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->zzbCA:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;Ljava/util/List;Z)V

    return-object v0
.end method

.method public setMonthlyPattern(Lcom/google/android/gms/reminders/model/MonthlyPattern;)Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/MonthlyPattern;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->zzbBx:Lcom/google/android/gms/reminders/model/MonthlyPattern;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
