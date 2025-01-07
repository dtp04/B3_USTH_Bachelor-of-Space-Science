#include "TH1F.h"
#include "TFile.h"
#include "TTree.h"
#include "TCanvas.h"
#include "TLegend.h"
#include "TLorentzVector.h"
#include <iostream>
#include <cmath>

void question1(){
    TFile *f = new TFile("/home/vson/USTH/Exam/data/wout_dataI_robusterTight_291110.root");
    TTree *tree = (TTree*)f->Get("T_reco");
    TCanvas *c1 = new TCanvas("c1", "W Boson Transverse Momentum Distributions", 800, 600);
    
    tree->Draw("sqrt(Wpx_reco*Wpx_reco + Wpy_reco*Wpy_reco)>>h1(100,0,100)", "", "");
    TH1F *h1 = (TH1F*)gDirectory->Get("h1");
    h1->SetLineColor(kPink);
    h1->SetLineWidth(2);
    h1->SetTitle("W Boson Transverse Momentum");
    h1->GetXaxis()->SetTitle("pT [GeV]");
    h1->GetYaxis()->SetTitle("Events");
    
    tree->Draw("sqrt(Wpx_reco1*Wpx_reco1 + Wpy_reco1*Wpy_reco1)>>h2(100,0,100)", "", "same");
    TH1F *h2 = (TH1F*)gDirectory->Get("h2");
    h2->SetLineColor(kBlue);
    h2->SetLineWidth(2);
    
    TLegend *legend = new TLegend(0.65,0.65,0.85,0.85);
    legend->AddEntry(h1, "pT_reco", "l");
    legend->AddEntry(h2, "pT_reco1", "l");
    legend->Draw();
    
    c1->Update();
}


void question1n2(){
    {
    TFile *f = new TFile("/home/vson/USTH/Exam/data/wout_dataI_robusterTight_291110.root");
    
    TTree *tree = (TTree*)f->Get("T_reco");
    TCanvas *c1 = new TCanvas("c1", "W Boson Distributions", 800, 600);
 
    c1->Divide(1,2);
    c1->cd(1); 
    
    tree->Draw("sqrt(Wpx_reco*Wpx_reco + Wpy_reco*Wpy_reco)>>h1(100,0,100)", "", "");
    TH1F *h1 = (TH1F*)gDirectory->Get("h1");
    h1->SetLineColor(kPink);
    h1->SetLineWidth(2);
    h1->SetTitle("W Boson Transverse Momentum");
    h1->GetXaxis()->SetTitle("pT [GeV]");
    h1->GetYaxis()->SetTitle("Events");
    
    tree->Draw("sqrt(Wpx_reco1*Wpx_reco1 + Wpy_reco1*Wpy_reco1)>>h2(100,0,100)", "", "same");
    TH1F *h2 = (TH1F*)gDirectory->Get("h2");
    h2->SetLineColor(kBlue);
    h2->SetLineWidth(2);
   
    TLegend *legend1 = new TLegend(0.65,0.65,0.85,0.85);
    legend1->AddEntry(h1, "pT_reco", "l");
    legend1->AddEntry(h2, "pT_reco1", "l");
    legend1->Draw();
    
    c1->cd(2);
    
    TH1F *h_RecEt = (TH1F*)f->Get("RecEt");
    if(h_RecEt) {
        h_RecEt->SetLineColor(kGreen);
        h_RecEt->SetLineWidth(2);
        h_RecEt->SetTitle("RecEt and Wpt_reco1 Distributions");
        h_RecEt->GetXaxis()->SetTitle("Energy [GeV]");
        h_RecEt->GetYaxis()->SetTitle("Events");
        h_RecEt->Draw();
    }
    
    TH1F *h_Wpt = new TH1F("h_Wpt", "", 100, 0, 100);
    tree->Draw("sqrt(Wpx_reco1*Wpx_reco1 + Wpy_reco1*Wpy_reco1)>>h_Wpt", "", "same");
    h_Wpt->SetLineColor(kViolet);
    h_Wpt->SetLineWidth(2);
    
    TLegend *legend2 = new TLegend(0.65,0.65,0.85,0.85);
    legend2->AddEntry(h_RecEt, "RecEt", "l");
    legend2->AddEntry(h_Wpt, "Wpt_reco1", "l");
    legend2->Draw();
    
    c1->Update();
}
}
