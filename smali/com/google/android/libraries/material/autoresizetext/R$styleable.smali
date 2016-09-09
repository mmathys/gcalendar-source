.class public final Lcom/google/android/libraries/material/autoresizetext/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/material/autoresizetext/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AutoResizeTextView:[I

.field public static final AutoResizeTextView_autoResizeText_minTextSize:I = 0x1

.field public static final AutoResizeTextView_autoResizeText_resizeStepUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100a4
        0x7f0100a5
    .end array-data
.end method
