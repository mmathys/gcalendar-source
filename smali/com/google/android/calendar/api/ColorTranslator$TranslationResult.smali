.class public Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;
.super Ljava/lang/Object;
.source "ColorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/ColorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationResult"
.end annotation


# instance fields
.field final displayColor:I

.field final lightColor:Ljava/lang/Integer;

.field final name:Ljava/lang/String;

.field final paletteIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->displayColor:I

    .line 24
    iput-object p2, p0, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->lightColor:Ljava/lang/Integer;

    .line 26
    iput-object p4, p0, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;->paletteIndex:Ljava/lang/Integer;

    .line 27
    return-void
.end method
